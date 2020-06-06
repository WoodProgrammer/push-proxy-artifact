#!/bin/bash

echo "Setting up push prox"

setup(){
    helm3 dependency update ./push-proxy
    helm3 template -f custom.yaml ./push-proxy
    #helm3 apply -f custom.yaml ./push-proxy
}

setup