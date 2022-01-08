.PHONY: init_data

ROOT_DIR = $(dir $(realpath $(firstword $(MAKEFILE_LIST))))

init_data:
	rm -rf $(ROOT_DIR)data
	cp -r initial_data data

mine:
	geth --datadir data --mine --miner.threads 1 --nodiscover --networkid=112233 --http --http.api personal,eth,net --http.corsdomain '*' --http.addr 127.0.0.1
