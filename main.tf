provider "azurerm" {
	version = "~>2.0"
	subscription_ID= var.subscriptionID
	client_id= var.clientID
	client_secret = var.clientSecret
	tenant_id = var.tenantID

  features {}
}

resource "azurerm_resource_group" "terraformDemo" {
  name      = var.RGName
  location  = var.location
}
