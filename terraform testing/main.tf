terraform {
  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
      version = "~> 3.11" 
    }
  }
}

provider "newrelic" {
  region = "US" 
}

resource "newrelic_alert_policy" "foo" {
  name = "example terraform policy"
  incident_preference = "PER_POLICY" # PER_POLICY is default
}