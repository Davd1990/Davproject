terraform {
  required_providers {
    oci = {
      source = "hashicorp/oci"
    }
  }
}

provider "oci" {
  region              = "us-east-ashburn"
  auth                = "SecurityToken"
  config_file_profile = "learn-terraform"
}

resource "oci_core_vcn" "internal" {
  dns_label      = "internal"
  cidr_block     = "172.16.0.0/20"
  compartment_id = "ocid1.tenancy.oc1..aaaaaaaaj7ganhfkbjklzu7gtu5qmhnfhaogn6r3nu6eh5rxzybeeu6d6wva"
  display_name   = "My internal VCN"
}
