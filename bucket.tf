data "oci_objectstorage_namespace" "ns" {
  compartment_id = var.compartment_ocid
}

resource "oci_objectstorage_bucket" "sample" {
  compartment_id = var.compartment_ocid
  namespace      = data.oci_objectstorage_namespace.ns.namespace
  name           = "test-terrateam-bucket-from-csa-shared-auth-sandbox"
  access_type    = "NoPublicAccess"
  auto_tiering   = "Disabled"
}

variable "compartment_ocid" {}
