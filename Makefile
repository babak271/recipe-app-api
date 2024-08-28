.PHONY: test
test:
	docker compose run --rm app sh -c "python manage.py test"

.PHONY: makemigrations
makemigrations:
	docker compose run --rm app sh -c "python manage.py makemigrations"

.PHONY: migrate
migrate:
	docker compose run --rm app sh -c "python manage.py wait_for_db && python manage.py migrate"

.PHONY: flake8
flake8:
	docker compose run --rm app sh -c "flake8"