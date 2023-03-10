# Terraform Settings Block
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "~>3.43.0" # Optional but recommended for Production
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

# Create the Azure Resource Group
resource "azurerm_resource_group" "my_demo_rg1" {
  location = "southindia"
  name = "my_demo_rg1"
}