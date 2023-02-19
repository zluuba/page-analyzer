dev:
	poetry run flask --app page_analizer:app run

PORT ?= 8000
start:
	poetry run gunicorn -w 5 -b 0.0.0.0:$(PORT) page_analyzer:app

install:
	poetry install

lint:
	poetry run flake8 page_analyzer
