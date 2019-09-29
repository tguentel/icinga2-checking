# Description

Icinga 2.10.5 on Alpine Linux 3.10

This creates a dummy zones.conf file to configure needed Zones and Endpoints to
check your configuration sytnax of Icinga2 in a CI/CD pipeline.

# Usage

1. Set your Zones (one ore multiple separated by comma) as environment variables
2. Call the script /opt/config.sh to generate your zones.conf

GLOBAL\_ZONES=global-templates,global-director
ALL\_ZONES=master,berlin,hamburg


Dockerhub: https://hub.docker.com/r/tguentel/icinga2
