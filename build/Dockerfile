FROM dzinsouhpe/centos:7.8.2003
LABEL maintainer="dietrich.zinsou@hpe.com"

RUN yum install -y java-1.8.0-openjdk python3

RUN cd /usr/local && \
    curl -o nifi-1.13.2-bin.tar.gz https://apache.mediamirrors.org/nifi/1.13.2/nifi-1.13.2-bin.tar.gz && \
    tar xzf nifi-1.13.2-bin.tar.gz && \
    chown -R root:root nifi-1.13.2 && \
    rm -rf nifi-1.13.2-bin.tar.gz && \
    ln -s nifi-1.13.2 nifi

COPY appconfig.tgz /opt/configscripts/appconfig.tgz

# Set JAVA_HOME
ENV JAVA_HOME=/usr/lib/jvm/jre-openjdk

COPY nifi.properties /usr/local/nifi/conf/nifi.properties
