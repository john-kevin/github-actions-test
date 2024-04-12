# data "oci_objectstorage_namespace" "ns" {
#   compartment_id = var.compartment_ocid
# }

# resource "oci_objectstorage_bucket" "sample" {
#   compartment_id = var.compartment_ocid
#   namespace      = data.oci_objectstorage_namespace.ns.namespace
#   name           = "test-terrateam-bucket-from-csa-shared-auth-sandboxs"
#   access_type    = "NoPublicAccess"
#   auto_tiering   = "Disabled"
# }

# variable "compartment_ocid" {}

locals {
  test = "Hello Terrateam!"
  another = "Terrateam Test, with Update #5"
}

output "test" {
  value = local.test
}

output "another" {
  value = local.another
}