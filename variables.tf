variable "GOOGLE_CREDENTIALS_PATH" {
  description = "Path to the GCP credentials file"
  type        = string
}

variable "GOOGLE_PROJECT_ID" {
  description = "GCP Project ID"
  type        = string
}

variable "GOOGLE_REGION" {
  description = "GCP region"
  type        = string
  default     = "us-central1-f"
}
