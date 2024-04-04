# minimal docker x traefik example with multiple services on one container

```bash
# put your docker socket in the .env file
# most likely something like this:
echo "DOCKER_SOCKET=/var/run/docker.sock" > .env
docker-compose up

# open http://localhost:8080 to see the traefik dashboard

# you can curl the services like this:
curl -H "Host: foo.local" http://localhost:3080/foo.file
curl -H "Host: bar.local" http://localhost:3080/bar.file

# the requests are routed to the same container but different services running on different ports
# see run-services.sh for the services
```
