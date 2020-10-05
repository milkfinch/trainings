#!/bin/bash

if [[ -z ${PROJECT_NAME} ]]
then
  echo "INPUT: Type PROJECT_NAME (student-XX-project):" && read PROJECT_NAME
fi
export REGION=europe-west3
export ZONE=europe-west3-a
export VM_NAME=loodse-training

gcloud beta compute --project=$PROJECT_NAME instances delete $VM_NAME --zone=$ZONE --quiet
