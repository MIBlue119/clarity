.DEFAULT_GOAL := help 
.PHONY: test 

help: 
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST)  | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
install: ## Install the module from github by pip
	pip install -r requirements.txt
	pip install -e .
uninstall: ## Uninstall the package
	pip uninstall clarity