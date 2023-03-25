#해당 이미지는 CentOS 8
FROM centos

RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-Linux-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-Linux-*
RUN yum update -y
RUN yum install -y net-tools
RUN yum install -y openssh-server
RUN yum install -y openssh-clients
RUN yum install -y passwd

CMD ["/sbin/init"]
