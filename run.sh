docker build -t banco .
docker run -p 5434:5432 -d --name banco banco 