# Provider Configuration 
variable "provider_token"{
    type = string
}
provider "fakewebservices" {
  alias  = "3e53191be96d4e8bba6689bdafbb9dee"
  token = var.provider_token
}

# Module Calls (Instanziierung der Bausteine)
module "HA_SERVICE_3e53191be96d4e8bba6689bdafbb9dee" {
  source  = "app.terraform.io/team-automation/higlyAvailableService/tfdp"
  version = "1.0.0"
  providers = {
    fakewebservices = fakewebservices.3e53191be96d4e8bba6689bdafbb9dee

  }
  vm_type = "webserver"
}

# Output
output "LB_ID" {
  value = module.HA_SERVICE_3e53191b-e96d-4e8b-ba66-89bdafbb9dee.lb_id
}