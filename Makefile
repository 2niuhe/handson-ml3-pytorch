.PHONY: help submodule-init submodule-update submodule-sync all

help:
	@echo "Available commands:"
	@echo "  make submodule-init    - Initialize submodules"
	@echo "  make submodule-update  - Update submodules to latest commit"
	@echo "  make submodule-sync    - Sync submodules configuration"
	@echo "  make all               - Run all submodule operations (init, sync, update)"

submodule-init:
	git submodule init

submodule-update:
	git submodule update --remote --merge

submodule-sync:
	git submodule sync
	git submodule update --init --recursive

all: submodule-init submodule-sync submodule-update
	@echo "All submodule operations completed successfully"
