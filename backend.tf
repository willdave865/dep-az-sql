# The block below configures Terraform to use the 'remote' backend with Terraform Cloud.
# For more information, see https://www.terraform.io/docs/backends/types/remote.html
terraform {
  backend "remote" {
    organization = "example-org-5d36be"

    workspaces {
      name = "dep-az-sql-workspace"
    }
  }


  required_version = ">= 1.0.6"
}

