#!/usr/bin/env bash

export ROBOMAKER_COMMAND="./run.sh build distributed_training.launch"
docker-compose -f ../../docker/docker-compose.yml down

docker stop $(docker ps | awk ' /sagemaker/ { print $1 }')
docker rm $(docker ps -a | awk ' /sagemaker/ { print $1 }')
