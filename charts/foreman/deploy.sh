#! /bin/sh

k="kubectl"
set -e

$k create namespace foreman

$k config set-context $(kubectl config current-context) --namespace=foreman

$k create -f services/rails_svc.yaml
$k create -f ingresses/ingress.yaml