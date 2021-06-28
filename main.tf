resource "azurerm_resource_group" "amdocs_rg" {
  name     = var.rg_name
  location = "EastUS"
}

resource "azurerm_virtual_network" "amdocs_vnet" {
  name                = var.vnet_name
  resource_group_name = azurerm_resource_group.amdocs_rg.name
  address_space       = var.address_space
  location            = azurerm_resource_group.amdocs_rg.location
  subnet {
    name           = "subnet1"
    address_prefix = var.subnet1
  }
}

resource "azurerm_subnet" "amdocs_subnet" {
  name                 = var.subnet_name
  resource_group_name  = azurerm_resource_group.amdocs_rg.name
  virtual_network_name = azurerm_virtual_network.amdocs_vnet.name
  address_prefixes     = var.subnet2
}



