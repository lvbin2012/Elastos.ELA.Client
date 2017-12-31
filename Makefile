GOFMT=gofmt
BUILD=go build
VERSION := $(shell git describe --abbrev=4 --dirty --always --tags)
Minversion := $(shell date)
BUILD_ELA_CLI = -ldflags "-X main.Version=$(VERSION)"

all:
	$(BUILD)  $(BUILD_ELA_CLI) ela-cli.go

format:
	$(GOFMT) -w main.go

clean:
	rm -rf *.8 *.o *.out *.6