FROM centos:latest
RUN yum install openssh-server passwd -y
RUN echo redhat | passwd root --stdin
RUN ssh-keygen -A
CMD ["/usr/sbin/sshd", "-D"] && /bin/bash  
