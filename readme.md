# terraform-module-azure-resource-group

Terraform module to provision a [Resource Group](<https://docs.microsoft.com/en-us/azure/azure-resource-manager/resource-group-overview#resource-groups>).

## Usage

```HCL
module "resource_group" {
  source                      = ".././modules/module-azure-resource-group"
  name                        = "organization_name-dev-eastus-01"
  location                    = "eastus"
  tags                        = {
    Solution    = "organization_name"
    Product     = "infra"
    Environment = "dev"
    Location    = "eastus"
    Alteration  = "01"
  }
}
```

## Module Details

This module creates an Azure Resource Group to be used to group Azure resources.


## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| name | The Name which should be used for this Resource Group. Changing this forces a new Resource Group to be created. | string | `n/a` | yes |
| location | The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created. | string | `n/a` | yes |
| tags | A mapping of tags assigned to the Resource Group resource | list | `n/a` | no |

## Outputs

| Name | Description |
|------|-------------|
| name | The name of the Resource Group |
| location | The supported Azure location where the Resource Group exists |
| id | The ID of the Resource Group. |

## Changelog

### v 0.0.1 2020-11-25

* Initial version

### v 1.0.0 2021-10-22

* Upgrade module to work with AzureRM provider v2.82.0
* Upgrade module to work with Terraform v1.0.7
* Upgrade README.md
