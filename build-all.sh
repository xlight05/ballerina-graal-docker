docker build -t alpine-dynamic-glibc  -f Dockerfile.alpine-dynamic-glibc .   #
docker build -t alpine-static-glibc  -f Dockerfile.alpine-static-glibc .
docker build -t alpine-static-musl  -f Dockerfile.alpine-static-musl .

docker build -t scratch-static-glibc  -f Dockerfile.scratch-static-glibc .
docker build -t scratch-static-musl  -f Dockerfile.scratch-static-musl .

docker build -t distroless-static  -f Dockerfile.distroless-mostly-static .

docker build -t debian-dynamic-glibc  -f Dockerfile.debian-dynamic-glibc .
docker build -t debian-static-glibc  -f Dockerfile.debian-static-glibc .

docker run -d -p 9090:9090 alpine-dynamic-glibc
docker run -d -p 9091:9090 alpine-static-glibc
docker run -d -p 9092:9090 alpine-static-musl

docker run -d -p 9093:9090 scratch-static-glibc
docker run -d -p 9094:9090 scratch-static-musl 

docker run -d -p 9095:9090 distroless-static

docker run -d -p 9096:9090 debian-dynamic-glibc
docker run -d -p 9097:9090 debian-static-glibc
