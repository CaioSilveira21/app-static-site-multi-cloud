terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.76.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-staticsite"
    storage_account_name = "terraformmultiaz"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}


