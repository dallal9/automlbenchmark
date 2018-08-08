#!/bin/bash   
DIRECTORY=$1

# Copy the first layers.
head -n -4 DockerfileTemplate > $DIRECTORY/Dockerfile

# Copy the AutoML-specific layers.
cat $DIRECTORY/CustomDockerCode >> $DIRECTORY/Dockerfile

# Append the ENTRY_POINT call.
tail -n 4 DockerfileTemplate >> $DIRECTORY/Dockerfile