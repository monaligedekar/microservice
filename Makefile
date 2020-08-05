## The Makefile includes instructions on environment setup
# Create and activate a virtual environment
# Install dependencies in requirements.txt

setup:
	# Create python virtualenv & source it
	# source ~/.devops/bin/activate
	python3 -m venv ~/.devops

install:
	# This should be run from inside a virtualenv
	pip install --upgrade pip &&\
		pip install -r requirements.txt

docker-build:
	# This should create docker image
	docker build -t monali1307/testapp:latest .
docker-push:
	# This should push the image on docker hub
	docker push monali1307/testapp:latest