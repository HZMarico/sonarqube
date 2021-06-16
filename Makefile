start:
	docker build -t sonarqube:8.9-community .
	docker-compose up -d