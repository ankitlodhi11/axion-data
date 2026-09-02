terraform {
  required_version = ">= 1.5.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = " 5.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "aks-test"
    storage_account_name = "rg-pipeline"
    container_name       = "tfstate"
    key                  = "prod.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "d795138c-0a80-4512-900f-fa3e55032490"
}

