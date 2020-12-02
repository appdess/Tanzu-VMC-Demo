#!/bin/bash
# build script for tito-app by adess
# https://github.com/appdess/Tanzu-VMC-Demo

VERSION=v1
set -euo pipefail
cd /home/tkg/Tanzu-VMC-Demo/docker/frontend
docker build -t frontend:$VERSION .
docker tag frontend:$VERSION harbor.cemea.vmc/library/tito-fe:$VERSION
docker push harbor.cemea.vmc/library/tito-fe:$VERSION

# build sql container
cd /home/tkg/Tanzu-VMC-Demo/docker/sql
docker build -t sql:$VERSION .
docker tag sql:$VERSION harbor.cemea.vmc/library/tito-sql:$VERSION
docker push harbor.cemea.vmc/library/tito-sql:$VERSION
