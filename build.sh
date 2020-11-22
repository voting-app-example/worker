#!/bin/sh

set -e

TAG=$(echo $GITHUB_SHA | head -c7)

REGISTRY_BASE_URL="registry.digitalocean.com/voting-app-example"

docker build \
 -t $REGISTRY_BASE_URL/worker:latest \
 -t $REGISTRY_BASE_URL/worker:$TAG .
