module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "learn-aft-sandbox@example.nl"
    AccountName               = "learn-aft-sandbox"
    ManagedOrganizationalUnit = "Learn AFT"
    SSOUserEmail              = "sandbox.fastned@gmail.com"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "Fastned"
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
