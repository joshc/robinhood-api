venv: # To activate: source ~/venvs/robinhood-api/bin/activate
	mkdir -p ~/venvs
	virtualenv -p python3 ~/venvs/robinhood-api

update-packages:
	pip install --upgrade pip
	pip install -r requirements.txt

update-reqs:
	pip freeze > requirements.txt

lint:
	# stop the build if there are Python syntax errors or undefined names
	flake8 . --count --select=E9,F63,F7,F82 --show-source --statistics
	# exit-zero treats all errors as warnings. The GitHub editor is 127 chars wide
	flake8 . --count --exit-zero --max-complexity=10 --max-line-length=127 --statistics

test:
	pytest

push: lint test

install-chromedriver:
	brew cask install chromedriver
