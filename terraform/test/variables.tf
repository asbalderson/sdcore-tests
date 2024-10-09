variable "model_name" {
  description = "Name of Juju model where the soluion is deployed"
  type        = string
}

variable "junitxml_path" {
  description = "path to save the junit xml from the tests run"
  type        = string
  default     = "~/sdcore-junit.xml"
}
