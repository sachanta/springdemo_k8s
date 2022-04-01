# Spring Boot demo application for Kubernetes

# For Local environmnet

echo "Creating Spring Boot demo application for Kubernetes on local environment"

### Create configmap for nginx
kubectl delete configmap nginx-conf
kubectl delete configmap server-conf

### Create deployments and services

# redis
kubectl delete -f deploy/redis/deployment.yaml
kubectl delete -f deploy/redis/service.yaml

# db
kubectl delete -f deploy/db/statefulset.yaml
kubectl delete -f deploy/db/service.yaml

# apserver (For Local environment)
kubectl delete -f deploy/app/deployment.yaml
kubectl delete -f deploy/app/service.yaml

# web
kubectl delete -f deploy/web/deployment.yaml
kubectl delete -f deploy/web/service.yaml

# LB
kubectl delete -f deploy/lb/loadbalancer.yaml

# PV,PVC
kubectl delete -f deploy/app/pvc.yaml
