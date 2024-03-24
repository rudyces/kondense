VERSION ?= test
IMG ?= ghcr.io/unagex/kondense:${VERSION}

all: build

build:
	docker build -t ${IMG} .

load:
	minikube image load ${IMG}

deploy:
	kubectl apply -f manifests

undeploy:
	kubectl delete -f manifests