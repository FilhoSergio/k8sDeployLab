build:
	docker build -t aSite . -f ./docker/a/Dockerfile
	docker build -t bSite . -f ./docker/b/Dockerfile
run:
	docker container run --name aSite -d -p 3001:80 aSite
	docker container run --name bSite -d -p 3002:80 bSite

remove:
	docker container rm -f aSite
	docker container rm -f bSite
