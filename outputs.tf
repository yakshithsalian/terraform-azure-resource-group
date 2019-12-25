output "id" {
  value       = "${azurerm_resource_group.cloudcommons.id}"
  description = "The resource group ID"
}

output "name" {
  value       = "${var.name}"
  description = "The name of the resource group."
}

output "location" {
  value       = "${var.name}"
  description = "The location where the resource group has be created."
}
