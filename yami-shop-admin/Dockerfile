FROM openjdk:17.0.2


RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

RUN mkdir -p /opt/projects/mall4j

WORKDIR /opt/projects/mall4j

ADD ./yami-shop-admin/target/yami-shop-admin-0.0.1-SNAPSHOT.jar ./

EXPOSE 8085

EXPOSE 5900

CMD java -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=0.0.0.0:5900 -jar -Xms512m -Xmx512m -Xss256k -XX:SurvivorRatio=8 -Dspring.profiles.active=docker yami-shop-admin-0.0.1-SNAPSHOT.jar
