FROM sonarqube:8.9-community

# 增加默认拓展
ADD plugins /opt/sonarqube/extensions/plugins

# 支持多分支
RUN echo 'sonar.web.javaAdditionalOpts=-javaagent:/opt/sonarqube/extensions/plugins/sonarqube-community-branch-plugin-1.8.0.jar=web' >> /opt/sonarqube/conf/sonar.properties
RUN echo 'sonar.ce.javaAdditionalOpts=-javaagent:/opt/sonarqube/extensions/plugins/sonarqube-community-branch-plugin-1.8.0.jar=ce' >> /opt/sonarqube/conf/sonar.properties

# 其他配置项，暂时由控制面板和数据库存储