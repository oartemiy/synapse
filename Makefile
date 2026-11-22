# --- Variables ---
APP     := synapse
BIN_DIR := bin
BIN     := $(BIN_DIR)/$(APP)
PKG     := ./...

.DEFAULT_GOAL := help

.PHONY: help build run test cover lint fmt tidy clean

## help: show available commands
help:
	@echo "Usage: make <target>"
	@echo ""
	@grep -E '^## ' $(MAKEFILE_LIST) | sed -e 's/^## /  /' | column -t -s ':'

## build: build the binary into bin/
build:
	go build -o $(BIN) ./cmd/$(APP)

## run: run the service
run:
	go run ./cmd/$(APP)

## test: run tests with race detector
test:
	go test -race $(PKG)

## cover: run tests and show coverage report
cover:
	go test -race -coverprofile=coverage.out $(PKG)
	go tool cover -func=coverage.out

## lint: run golangci-lint
lint:
	golangci-lint run $(PKG)

## fmt: format code
fmt:
	gofmt -s -w .

## tidy: tidy go.mod and go.sum
tidy:
	go mod tidy

## clean: remove build artifacts
clean:
	rm -rf $(BIN_DIR) coverage.out