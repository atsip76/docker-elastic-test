#!/bin/bash

export ELASTIC_VERSION=7.17.6
export ELASTICSEARCH_USERNAME=elastic
export ELASTICSEARCH_PASSWORD=usedesk
export ELASTICSEARCH_HOST=elastic-master01
export INITIAL_MASTER_NODES=elastic-master01

docker network create --driver overlay --attachable elastic
docker stack deploy --compose-file docker-compose.yml elastic
