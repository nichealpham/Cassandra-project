# Script to build, push bravo-api-image & start container
docker stop cassandra.home.v1
docker rmi cassandra/home:latest
docker build --rm -t cassandra/home:latest .
docker run --rm -d --name cassandra.home.v1 -p 8100:8100 cassandra/home:latest