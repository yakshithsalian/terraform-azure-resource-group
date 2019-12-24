variable "name" {
  type = "string"
  description = "(Required) The name of the resource group. Must be unique on your Azure subscription"
}

variable "location" {
  type = "string"
  description = "(Required) The location where the resource group should be created. For a list of all Azure locations, please consult this link or run az account list-locations --output table."
}

variable "app" {
  type = "string"
  description = "(Optional) Adds a tag with the application name."
  default = ""
}

variable "environment" {
  type = "string"
  description = "(Optional) Environment name. If not specified, this module will use workspace as default value"
  default = "${terraform.workspace}"
}

variable "creator" {
  type = "string"
  description = "(Optional) Adds a tag indicating the creator of this resource"
  default = "cloudcommons"
}

resource "azurerm_resource_group" "cloudcommons" {
  name     = "${var.name}"
  location = "${var.location}"

  tags = {
    app = "${var.app}"    
    environment = "${var.environment}"
    creator = "${var.creator}"   
  }
}

output "id" {
  value = "${azurerm_resource_group.cloudcommons.id}"
  description = "The resource group ID"
}

output "name" {
  value = "${var.name}"
  description = "The name of the resource group."
}

output "location" {
  value = "${var.name}"
  description = "The location where the resource group has be created."
}
