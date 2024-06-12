#!/bin/bash

#Detiene Minikube
minikube stop

#Inicia Minikube con con memoria limitada porque si no, no funcionrá
minikube start --memory=1967mb --force

#Aplicamos los manifiestos
kubectl apply -f /home/victor/ExamenHLC/Despliegues/proyectos/kubernetes/deploymentvaf.yaml
kubectl apply -f /home/victor/ExamenHLC/Despliegues/proyectos/kubernetes/servicevaf.yaml

#Iniciamos los contenedores
docker-compose -f /home/victor/ExamenHLC/DesplieguesVAF/proyectosVAF/docker/docker-compose.yml up --build -d
