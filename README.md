# default: ENTRYPOINT or CMD 

docker stop mycontainer001

docker rm mycontainer001

docker build -t myimage001 .

docker images

docker run -d -p 81:80 --name mycontainer001 myimage001

docker ps 


# no ENTRYPOINT no CMD 

docker stop mycontainer001

docker rm mycontainer001

docker build -t myimage001 .

docker images

docker run -d -p 81:80 --name mycontainer001 myimage001 httpd -D FOREGROUND

docker ps 


# keep it running 

docker stop mycontainer001

docker rm mycontainer001

docker build -t myimage001 .

docker images

docker run -d -p 81:80 --name mycontainer001 myimage001 tail -f /dev/null

docker ps 


# debug 

docker logs mycontainer001

docker exec -it mycontainer001 /bin/sh

# docker-tutorial-001
