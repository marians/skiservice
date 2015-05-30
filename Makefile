build:
	docker build -t skiservice .

run:
	docker run --rm -ti -p 80:80 --name skiservice_container skiservice

push:
	docker tag -f skiservice registry.giantswarm.io/marian/skiservice:latest
	docker push registry.giantswarm.io/marian/skiservice:latest
