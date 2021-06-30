variable "subscription_id" {
  type        = string
  description = "Subscription ID"
  default     = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
}

variable "client_id" {
  type        = string
  description = "Client ID of AZ SP"
}

variable "client_secret" {
  type        = string
  description = "Client Secret of AZ SP"
}

variable "tenant_id" {
  type        = string
  description = "Tenant ID of AZ Cloud"
  default     = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
}

variable "rg_name" {
  type        = string
  description = "Name of the Resource Group"
  default     = "amdocs_rg"
}

variable "vnet_name" {
  type        = string
  description = "VNet Name"
  default     = "amdocs_default_vnet"
}

variable "address_space" {
  type        = list(string)
  description = "Address space for the VNet"
  default     = ["172.16.0.0/16"]
}

variable "subnet1" {
  default = "172.16.10.0/24"
}

variable "subnet2" {
  default = ["172.16.20.0/24"]
}

variable "subnet_name" {
  default = "subnet2"
}