FROM sonarqube:9.1.0-community

ARG COMMUNITY_BRANCH_VERSION=1.9.0

RUN wget https://github.com/mc1arke/sonarqube-community-branch-plugin/releases/download/${COMMUNITY_BRANCH_VERSION}/sonarqube-community-branch-plugin-${COMMUNITY_BRANCH_VERSION}.jar -O /opt/sonarqube/extensions/plugins/sonarqube-community-branch-plugin-${COMMUNITY_BRANCH_VERSION}.jar
ENV SONAR_WEB_JAVAADDITIONALOPTS=-javaagent:./extensions/plugins/sonarqube-community-branch-plugin-${COMMUNITY_BRANCH_VERSION}.jar=web
ENV SONAR_CE_JAVAADDITIONALOPTS=-javaagent:./extensions/plugins/sonarqube-community-branch-plugin-${COMMUNITY_BRANCH_VERSION}.jar=ce