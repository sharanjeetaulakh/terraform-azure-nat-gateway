resource "azurerm_nat_gateway" "nat_gateway" {
    for_each=var.nats
  name                    = key.value.name
  location                = key.value.location
  resource_group_name     = key.value.resource_group_name
  sku_name                =  key.value.sku_name
  idle_timeout_in_minutes =  key.value.idle_timeout_in_minutes
  zones                   =  key.value.zones     
}

