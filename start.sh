#!/bin/bash

###################################
#### Creating docker network :
echo "# Creating docker network"
sudo docker network create --subnet=172.254.0.0/16 twitterLambdaNet
echo "# Done"

###################################
### Running Docker Images :

echo "# Launching docker images"
#### Kafka : 
# sudo docker run --name kafka --net ninoxnet --ip 172.254.0.7 -d --hostname 172.254.0.7 -p 2181:2181 -p 9092:9092 --env ADVERTISED_HOST=172.254.0.7 --env ADVERTISED_PORT=9092 kafka
sudo docker run -d --name kafka -p 2181:2181 -p 9092:9092 --hostname 127.0.0.1 kafka

