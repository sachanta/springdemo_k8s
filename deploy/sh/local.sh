# Spring Boot demo application for Kubernetes

# For Local environmnet

echo "Creating Spring Boot demo application for Kubernetes on local environment"

kubectl apply -f deploy/app/instrumentation.yaml

### Create configmap for nginx
kubectl create configmap nginx-conf --from-file=deploy/web/nginx.conf 
kubectl create configmap server-conf --from-file=deploy/web/server.conf 

### Create deployments and services

# redis
kubectl apply -f deploy/redis/deployment.yaml
kubectl apply -f deploy/redis/service.yaml

# db
kubectl apply -f deploy/db/statefulset.yaml
kubectl apply -f deploy/db/service.yaml

# apserver (For Local environment)
#kubectl apply -f deploy/app/pvc.yaml
kubectl apply -f deploy/app/deployment.yaml
kubectl apply -f deploy/app/service.yaml

# web
kubectl apply -f deploy/web/deployment.yaml
kubectl apply -f deploy/web/service.yaml

# LB
kubectl apply -f deploy/lb/loadbalancer.yaml
