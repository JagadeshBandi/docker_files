terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "hardwork"
    storage_account_name = "scuccesswillgiveresult"
    container_name       = "container1"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}
