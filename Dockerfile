from java:latest
maintainer "test<test@abc.com>"
user root
ENV APPDIR=/data
RUN mkdir $APPDIR
ADD ./gitbucket.war $APPDIR
WORKDIR $APPDIR
CMD ["java","-jar","gitbucket.war"]
EXPOSE 8080
