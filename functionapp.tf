resource "azurerm_linux_function_app" "serverless1" {
    name = "serverless1-${lower(var.project)}-${lower(var.environment)}"
    resource_group_name = azurerm_resource_group.rg.name
    location = var.location
    service_plan_id = azurerm_service_plan.sp.id
    storage_account_name = azurerm_storage_account.saccount2.name
    site_config {
    }
}