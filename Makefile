SHELL = /bin/bash

IMAGE ?= linode-cli
TAG ?= latest
IMAGE_TAG ?= $(IMAGE):$(TAG)

default:

build:
	docker build -t $(IMAGE_TAG) .

configure:
	mkdir -p .config
	bin/linode-cli configure

bash:
	bin/linode-cli bash
