.PHONY: up down run-gateway test lint

up:
	docker compose -f deploy/docker-compose.yml up -d

down:
	docker compose -f deploy/docker-compose.yml down

run-gateway:
	go run ./cmd/gateway

test:
	go test ./... -race -cover

lint:
	go vet ./...