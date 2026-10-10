variable "config_configuration_recorders" {
  description = <<EOT
Map of config_configuration_recorders, attributes below
Required:
    - role_arn
Optional:
    - name
    - region
    - recording_group (block):
        - all_supported (optional)
        - exclusion_by_resource_types (optional, block):
            - resource_types (optional)
        - include_global_resource_types (optional)
        - recording_strategy (optional, block):
            - use_only (optional)
        - resource_types (optional)
    - recording_mode (block):
        - recording_frequency (optional)
        - recording_mode_override (optional, block):
            - description (optional)
            - recording_frequency (required)
            - resource_types (required)
EOT

  type = map(object({
    role_arn = string
    name     = optional(string)
    region   = optional(string)
    recording_group = optional(object({
      all_supported = optional(bool)
      exclusion_by_resource_types = optional(list(object({
        resource_types = optional(set(string))
      })))
      include_global_resource_types = optional(bool)
      recording_strategy = optional(list(object({
        use_only = optional(string)
      })))
      resource_types = optional(set(string))
    }))
    recording_mode = optional(object({
      recording_frequency = optional(string)
      recording_mode_override = optional(object({
        description         = optional(string)
        recording_frequency = string
        resource_types      = set(string)
      }))
    }))
  }))
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

