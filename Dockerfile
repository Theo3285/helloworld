FROM frolvlad/alpine-oraclejdk8:slim
ADD /target/helloworld-0.0.1-SNAPSHOT.jar helloworld-0.0.1-SNAPSHOT.jar
ADD /helloworld.yml helloworld.yml
EXPOSE 7070 7071
ENTRYPOINT ["java","-jar","helloworld-0.0.1-SNAPSHOT.jar","server","helloworld.yml"]