#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=dockdockgg/ggdock 

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run ggudacityproj4 --image=dockdockgg/ggdock:latest --port=8000
#kubectl create deployment kubgg --image=dockdockgg/ggdock:latest --port=80

# Step 3:
# List kubernetes pods
kubectl get pods --all-namespaces

# Step 4:
# Forward the container port to a host
# kubectl expose deployment k8sapp --type="NodePort" --port=80
# kubectl expose deployment k8sapp --type=LoadBalancer --port=80
# kubectl expose deployment k8sapp --type=LoadBalancer --name=k8sapp-service --port=80 --target-port=80
kubectl port-forward pod/ggudacityproj4 8000:80

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>

# Step 2
# Run the Docker Hub container with kubernetes


# Step 3:
# List kubernetes pods

# Step 4:
# Forward the container port to a host

