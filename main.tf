# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "jacob_test_rg" {
  name     = "jacob_test_rg"
  location = "West Europe"
  tags     = {
    environment = "jacob_dev"
  }
}
