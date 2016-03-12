FROM phusion/baseimage:0.9.18

# Install Java
RUN add-apt-repository -y ppa:webupd8team/java
RUN apt-get update
RUN echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
RUN echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections
RUN apt-get install -y oracle-java7-installer

# Install youtrack
WORKDIR /home/youtrack
RUN wget -nv http://download.jetbrains.com/charisma/youtrack-6.0.12634.jar -O /youtrack.jar

ADD ./etc /etc

EXPOSE 8080

VOLUME [ "/youtrack-data" ]

CMD ["/sbin/my_init"]
