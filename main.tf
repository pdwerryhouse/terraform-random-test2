
resource "random_string" "this" {
  length           = var.length
  special          = false
}

module "blah" {
  count           = var.recurse == false ? 0 : 1
  source          = "git::https://github.com/pdwerryhouse/terraform-random-test.git"
  length          = var.length
  recurse         = false
}
