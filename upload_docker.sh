#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=cabreu90/app

# Step 2:  
# Authenticate & tag
cat ~/mypassword.txt | docker login --username cabreu90 --password-stdin
echo "Docker ID and Image: $dockerpath"
docker tag 923fc3bd0e37 $dockerpath

# Step 3:
# Push image to a docker repository
docker push $dockerpath