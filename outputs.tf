output "config_configuration_recorders_id" {
  description = "Map of id values across all config_configuration_recorders, keyed the same as var.config_configuration_recorders"
  value       = { for k, v in aws_config_configuration_recorder.config_configuration_recorders : k => v.id if v.id != null && length(v.id) > 0 }
}
output "config_configuration_recorders_name" {
  description = "Map of name values across all config_configuration_recorders, keyed the same as var.config_configuration_recorders"
  value       = { for k, v in aws_config_configuration_recorder.config_configuration_recorders : k => v.name if v.name != null && length(v.name) > 0 }
}
output "config_configuration_recorders_recording_group" {
  description = "Map of recording_group values across all config_configuration_recorders, keyed the same as var.config_configuration_recorders"
  value       = { for k, v in aws_config_configuration_recorder.config_configuration_recorders : k => one(v.recording_group) if v.recording_group != null && length(v.recording_group) > 0 }
}
output "config_configuration_recorders_recording_mode" {
  description = "Map of recording_mode values across all config_configuration_recorders, keyed the same as var.config_configuration_recorders"
  value       = { for k, v in aws_config_configuration_recorder.config_configuration_recorders : k => one(v.recording_mode) if v.recording_mode != null && length(v.recording_mode) > 0 }
}
output "config_configuration_recorders_region" {
  description = "Map of region values across all config_configuration_recorders, keyed the same as var.config_configuration_recorders"
  value       = { for k, v in aws_config_configuration_recorder.config_configuration_recorders : k => v.region if v.region != null && length(v.region) > 0 }
}
output "config_configuration_recorders_role_arn" {
  description = "Map of role_arn values across all config_configuration_recorders, keyed the same as var.config_configuration_recorders"
  value       = { for k, v in aws_config_configuration_recorder.config_configuration_recorders : k => v.role_arn if v.role_arn != null && length(v.role_arn) > 0 }
}

