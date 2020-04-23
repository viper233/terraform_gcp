terraform {
  required_version = ">= 0.12.24"

  backend "gcs" {
    bucket = "sgranger-terraform-admin"
    prefix = "terraform/state"
  }
}

provider "google" {
  credentials = file(var.credentials)
  version     = "=3.18.0"
  project     = var.project
  region      = var.default_region
}
