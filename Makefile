src_dir := ./src
src := $(shell find $(src_dir) -type f -name "*.proto")

go_client_dir := ./generated/go


PROTOC_PATH := protoc

.PHONY: go

go: $(go_client_dir) $(src)
	$(PROTOC_PATH) --proto_path=$(src_dir) --go_out=$(go_client_dir) --go_opt=paths=source_relative $(src)
	@echo "Created go client code in $(go_client_dir)"


$(go_client_dir):
	mkdir -p $(go_client_dir)

