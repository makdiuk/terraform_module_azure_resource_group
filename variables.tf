variable "name" {
  description = "The Name which should be used for this Resource Group. Changing this forces a new Resource Group to be created."
}

variable "location" {
  description = "The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created."
}

variable "tags" {
  description = "A mapping of tags which should be assigned to the Resource Group."
  default     = {}
}