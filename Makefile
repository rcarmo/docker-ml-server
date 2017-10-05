IMAGE_NAME=rcarmo/ml-server
HOSTNAME=ml-server
build: Dockerfile
	docker build -t ${IMAGE_NAME} .

shell:
	docker run --name ${HOSTNAME} -h ${HOSTNAME} \
	-it ${IMAGE_NAME} /bin/sh

daemon:
	-docker kill ${HOSTNAME}
	-docker rm ${HOSTNAME}
	docker run --name ${HOSTNAME} -h ${HOSTNAME} \
	-d --restart=always \
	--security-opt no-new-privileges \
        --net=host 

push:
	docker push ${IMAGE_NAME}

clean:
	-docker rm -v $$(docker ps -a -q -f status=exited)
	-docker rmi $$(docker images -q -f dangling=true)
	-docker rmi $(IMAGE_NAME)
