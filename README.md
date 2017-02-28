# Demo

This is a test redis Spring Boot app

## Setup
You will need the following installed and running:
* Java 8
* Docker and docker-compose
* Optional Gradle 2.2 or up. The instructions use the packaged gradelw script 

## Running

```shell
docker-compose up -d demo-redis
./gradelw bootRun
```

Starts Redis and then runs SpringBoot. This is available on port 8080. You should see in the logs:
```shell
Found key spring.boot.redis.test, value=foo
```

You can run the whole thing in Docker:
```shell
docker-compose up
``` 

But you will need to configure the RedisTemplate in SpringBoot to use the environment variable instead of the default (localhost:6379)

