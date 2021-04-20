#!/bin/bash

# Clean and create appconfig archive
rm -rf ./kubedirector/appconfig.tgz
cd ./kubedirector && tar czf appconfig.tgz appconfig/ && cd -
mv ./kubedirector/appconfig.tgz .

# Build and push Docker image
docker build -t dzinsouhpe/nifi:1.13.2 .
docker push dzinsouhpe/nifi:1.13.2

docker build -t dzinsouhpe/nifi:latest .
docker push dzinsouhpe/nifi:latest

# Delete temporary archive
rm -rf ./appconfig.tgz
