# This image will be based on the official nodejs docker image
FROM openjdk:8

# Set in what directory commands will run
WORKDIR /code

# Put all our code inside that directory that lives in the container
ADD . /code

# Install dependencies
#RUN apt-get install ...

# Tell Docker we are going to use this port
EXPOSE 8080

# The command to run our app when the container is run
CMD ["./gradlew", "bootRun"]