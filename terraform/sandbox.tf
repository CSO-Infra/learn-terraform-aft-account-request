module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "cpes-infra+testing1@centricsoftware.onmicrosoft.com"
    AccountName               = "sandbox-mark-lehmann"
    ManagedOrganizationalUnit = "controller"
    SSOUserEmail              = "cpes-infra+testing1@centricsoftware.onmicrosoft.com"
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
