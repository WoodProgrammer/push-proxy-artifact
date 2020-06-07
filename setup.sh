#!/bin/bash

echo "Setting up push prox"

setup(){
    helm dependency update ./push-proxy
    #helm template -f custom.yaml ./push-proxy
    helm upgrade -i myrelease -f custom.yaml ./push-proxy --namespace=prometheus-project
}

setup
