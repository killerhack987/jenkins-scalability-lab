#!/bin/bash
set -x
docker kill gitserver influx jenkins grafana || true
for i in $(docker ps -f label=role=agent -q); do
    docker kill $i || true
done