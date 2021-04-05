FROM centos:latest
RUN yum -y update
RUN yum install -y openssh-server
RUN ssh-keygen -A
ADD ./sshd_config /ws1/dockertask/sshd_config 
RUN echo root:root | chpasswd
CMD /usr/sbin/sshd -D
