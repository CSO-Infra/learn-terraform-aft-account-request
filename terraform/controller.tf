module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "cpes-infra+new@centricsoftware.onmicrosoft.com"
    AccountName               = "sandbox-new"
    ManagedOrganizationalUnit = "controller (ou-ahid-8mwyn1in)"
    SSOUserEmail              = "cpes-infra+new@centricsoftware.onmicrosoft.com"
    SSOUserFirstName          = "controller"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}


module "Controller" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "cpes-infra+mark-lehmann@centricsoftware.onmicrosoft.com"
    AccountName               = "controller-01"
    ManagedOrganizationalUnit = "Controller"
    SSOUserEmail              = "cpes-infra+mark-lehmann@centricsoftware.onmicrosoft.com"
    SSOUserFirstName          = "controller"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "controller"
}