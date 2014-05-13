FROM fedora
MAINTAINER Matt Hicks <mhicks@redhat.com>

RUN yum update -y

RUN yum install -y -q zookeeper-server
RUN cp /etc/zookeeper/zoo_sample.cfg /etc/zookeeper/zoo.cfg
ADD zookeeper.sh /usr/bin/zookeeper.sh

EXPOSE 2181 2888 3888

CMD /usr/bin/zookeeper.sh
