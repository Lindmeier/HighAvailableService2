# Provider Configuration 
variable "provider_token"{
    type = string
}
provider "fakewebservices" {
  token = var.provider_token
}

# Module Calls (Instanziierung der Bausteine)
module "HA_SERVICE_3e53191be96d4e8bba6689bdafbb9dee" {
  source  = "app.terraform.io/team-automation/higlyAvailableService/tfdp"
  version = "1.0.0"
  
  vm_type = "webserver"
}

 module "HA_SERVICE_3e53191be91651a6689bdafbb9dee" {
   source  = "app.terraform.io/team-automation/higlyAvailableService/tfdp"
   version = "1.0.0"
  
   vm_type = "restservice"
 }

# Output
output "LB_ID_3e53191be96d4e8bba6689bdafbb9dee" {
  value = module.HA_SERVICE_3e53191be96d4e8bba6689bdafbb9dee.lb_id
}

 output "LB_ID_3e53191be91651a6689bdafbb9dee" {
   value = module.HA_SERVICE_3e53191be91651a6689bdafbb9dee.lb_id
 }