.PHONY: up
up: ## up docker containers
	docker-compose up -d

.PHONY: down
down: ## down docker containers
	docker-compose down

.PHONY: stop
stop: ## stop docker containers
	docker-compose stop

### clean系 ###

.PHONY: clean-postgres

clean: down clean-postgres

clean-postgres:
	-docker volume rm r-docker_bclone-data