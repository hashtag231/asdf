#! /bin/bash
kubectl config use-context k8s
kubectl create clusterrole deployment-clusterrole --verb=create --resources=Deployment,StatefulSet,DaemonSet
kubectl get clusterrole deployment-clusterrole
kubectl create sa cicd-token -n app-team1
kubectl create clusterrolebinding deployment-clusterrole --clusterrole deployment-clusterrole --serviceaccount app-team1:cicd-token 
