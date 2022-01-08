.PHONY: init_data

ROOT_DIR = $(dir $(realpath $(firstword $(MAKEFILE_LIST))))

init_data:
	rm -rf $(ROOT_DIR)data
	cp -r initial_data data