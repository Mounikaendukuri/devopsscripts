#amazon linux extras is not working on amazon linux 2023 it is depricated
#wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.23/bin/apache-tomcat-10.1.23.tar.gz
#tar -zxvf apache-tomcat-10.1.23.tar.gz
sudo yum update -y
sudo yum install java-17-amazon-corretto-devel -y
wget https://archive.apache.org/dist/tomcat/tomcat-10/v10.1.23/bin/apache-tomcat-10.1.23.tar.gz
sudo tar -xvzf apache-tomcat-10.1.23.tar.gz
sed -i '56  a\<role rolename="manager-gui"/>' apache-tomcat-10.1.23/conf/tomcat-users.xml
sed -i '57  a\<role rolename="manager-script"/>' apache-tomcat-10.1.23/conf/tomcat-users.xml
sed -i '58  a\<user username="tomcat" password="root123" roles="manager-gui, manager-script"/>' apache-tomcat-10.1.23/conf/tomcat-users.xml
sed -i '59  a\</tomcat-users>' apache-tomcat-10.1.23/conf/tomcat-users.xml
sed -i '56d' apache-tomcat-10.1.23/conf/tomcat-users.xml
sed -i '21d' apache-tomcat-10.1.23/webapps/manager/META-INF/context.xml
sed -i '22d' apache-tomcat-10.1.23/webapps/manager/META-INF/context.xml
sh apache-tomcat-10.1.23/bin/startup.sh



#do it manually
#sed -i 's/33/34/g' tomcat.sh ( changing the version  ex:10.1.32 to 10.1.34)
