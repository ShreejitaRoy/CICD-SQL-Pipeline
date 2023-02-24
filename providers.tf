terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.54.0"
      credentials = "credentials.json"
    }
  }
}
provider "google" {
  project = var.project
  region  = var.region
}