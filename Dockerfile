FROM tomcat:8.0.20-jre8
# Dummy text to test 
COPY build/libs/*.war /usr/local/tomcat/webapps/gradle-web-app.war
