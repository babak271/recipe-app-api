.PHONY: test
test:
	docker compose run --rm app sh -c "python manage.py test"

.PHONY: flake8
flake8:
	docker compose run --rm app sh -c "flake8"