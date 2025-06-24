#!/bin/bash

# File: /home/ubuntu/DPDZERO-Project/healthcheck.sh

TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

NGINX_HOST="http://13.222.61.56:8080"

# Endpoints to check
SERVICE1_ENDPOINT="$NGINX_HOST/service1/"
SERVICE2_ENDPOINT="$NGINX_HOST/service2/"

# Log file path
LOGFILE="/home/ubuntu/healthcheck.log"

# Function to check service
check_service() {
  local url=$1
  local name=$2

  http_code=$(curl -s -o /dev/null -w "%{http_code}" "$url")

  if [ "$http_code" -eq 200 ]; then
    echo "$TIMESTAMP ✅ $name is healthy (HTTP $http_code)" >> "$LOGFILE"
  else
    echo "$TIMESTAMP ❌ $name is NOT healthy (HTTP $http_code)" >> "$LOGFILE"
  fi
}

# Perform health checks
check_service "$SERVICE1_ENDPOINT" "Service1"
check_service "$SERVICE2_ENDPOINT" "Service2"

