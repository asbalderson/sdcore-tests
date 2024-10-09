resource "terraform_data" "requirements_install" {
  provisioner "local-exec" {
    command = "sudo DEBIAN_FRONTEND=noninteractive apt install -y git tox"
  }
}

resource "terraform_data" "git_clone" {
  provisioner "local-exec" {
    command = "git clone https://github.com/canonical/sdcore-tests.git"
  }
}

resource "terraform_data" "run_test" {
  provisioner "local-exec" {
    command = "cd sdcore-tests; tox -vvv integration --model ${var.juju_model} --xml-output ${var.junitxml_path}"
  }
}
