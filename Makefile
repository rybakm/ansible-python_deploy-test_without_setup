SHELL := /bin/bash

PYTHON_INTERPRETER = python3.7

DATADIR = $(shell pwd)
REQUIREMENTSDIR = $(DATADIR)

WORKDIR = $(DATADIR)

PYTHON_ENVDIR = $(WORKDIR)/venv
PYTHON_ENVBIN = $(PYTHON_ENVDIR)/bin

.PHONY: env

env:
ifeq ("$(wildcard $(PYTHON_ENVDIR) )", "")
	@echo "Creating virtualenv"
	/usr/local/bin/virtualenv -p $(PYTHON_INTERPRETER) $(PYTHON_ENVDIR)
endif
	@echo "Installing requirements"
	source $(PYTHON_ENVBIN)/activate && pip install -r $(REQUIREMENTSDIR)/requirements.txt

clean_env:
	-rm -rf $(PYTHON_ENVDIR)
