#!/bin/bash

docker run --rm -it \
       --link database:database \
       --network network_default \
       -v /var/run/docker.sock:/var/run/docker.sock \
       mu-swarm-logger-service /src/run.py --debug
