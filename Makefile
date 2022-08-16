install:
	poetry install
page_loader:
	poetry run page_loader
package-install:
	python3 -m pip install --user dist/*.whl
lint:
	poetry run flake8 page_loader
test:
	poetry run pytest
test-detail:
	poetry run pytest -vv
selfcheck:
	poetry check

check:  selfcheck test lint

build:  check
	poetry build
test-coverage:
	poetry run pytest --cov=page_loader --cov-report xml
.PHONY: install test lint selfcheck check build gendiff test-detail gentest
