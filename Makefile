install:
	python -m pip install --upgrade pip &&\
		python -m pip install -r requirements.txt

test:
	python -m pytest --nbval data-science-notebook.ipynb

format:
	black *.py

lint:
	python -m pylint --disable=R,C app.py

all: install lint test format