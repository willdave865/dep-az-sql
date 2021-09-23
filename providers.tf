terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.45.1"
    }
  }
}

# The following variable is used to configure the provider's authentication
# token. Token is already securely stored in workspace - see provider.tf for name

variable "provider_token" {
  type = string
  sensitive = true
}

provider "fakewebservices" {
  token = var.provider_token
}


# azure does not need configuring until actual provisioning
provider "azurerm" {
  ## https://github.com/terraform-providers/terraform-provider-azurerm/blob/master/CHANGELOG.md
  #version = "2.45.1"
  #subscription_id = ""
  #client_id       = "" ## appId from output
  #client_secret   = "" ## password from output
  #tenant_id       = "" ## tennant from output
  features {}
}


