resource "azurerm_resource_group" "rg" {

  name     = var.resource_group_name
  location = var.location

}


resource "azurerm_storage_account" "storage" {

  name = "cloudsupportstorage2026"

  resource_group_name = azurerm_resource_group.rg.name

  location = azurerm_resource_group.rg.location


  account_tier = "Standard"

  account_replication_type = "LRS"


  min_tls_version = "TLS1_2"


  tags = {

    Environment = "Development"

    Project = "Cloud Portfolio"

  }

}
