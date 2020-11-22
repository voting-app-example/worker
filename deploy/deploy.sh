#!/bin/sh

set -e

TEMPLATE_FILE="$GITHUB_WORKSPACE/deploy/templates/worker-deployment.template.yaml"

sed 's/<TAG>/'$TAG'/g' $TEMPLATE_FILE > $GITHUB_WORKSPACE/deploy/manifests/worker-deployment.yaml

KUBECONFIG_FILE="$GITHUB_WORKSPACE/deploy/kubeconfig.yml"

kubectl --kubeconfig=$KUBECONFIG_FILE apply -f $GITHUB_WORKSPACE/deploy/manifests/
