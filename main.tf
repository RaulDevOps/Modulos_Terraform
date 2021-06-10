terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.71.0"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = "3.71.0"
    }
  }
}

provider "google" {
  credentials = file("terraform-project-315410-f682d6c6c626.json")
  project = "terraform-project-315410"
  region  = "us-central1"
  zone    = "us-central1-c"
}
provider "google-beta" {
  credentials = file("terraform-project-315410-f682d6c6c626.json")
  project = "terraform-project-315410"
  region  = "us-central1"
  zone    = "us-central1-c"
}

module "vpc" {
  source = "./modulos/vpc"
  ID_proyecto = var.ID_proyecto
}