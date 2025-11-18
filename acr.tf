resource "azurerm_container_registry" "acr" {
    name = "acr${lower(var.project)}${lower(var.environment)}2025"
    resource_group_name = azurerm_resource_group.rg.name
    location = var.location
    sku = "Basic"
    admin_enabled = true
    tags = var.tags
}