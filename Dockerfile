# docker build --rm -f docker/Dockerfile -t plugins/docker .

FROM docker:17.12.0-ce-dind
RUN sh .drone.sh
ADD release/linux/amd64/drone-docker-gcr /bin/ /bin/
ENTRYPOINT ["/usr/local/bin/dockerd-entrypoint.sh", "/bin/drone-docker"]
