all: deps build test

deps: FORCE
	CFLAGS=-std=c99 CGO_CFLAGS_ALLOW=-Xpreprocessor go get ./...

build: FORCE
	CFLAGS=-std=c99 CGO_CFLAGS_ALLOW=-Xpreprocessor go build ./vips

test: FORCE
	CFLAGS=-std=c99 CGO_CFLAGS_ALLOW=-Xpreprocessor go test -v ./...

FORCE:
