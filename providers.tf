terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "terraform-state-resource-group"
    storage_account_name = "terraform16072023"
    container_name       = "terraform16072024"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}
