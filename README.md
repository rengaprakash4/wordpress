# JWORDPRESS #

An easy and pre-packaged WAR to run Wordpress in your preferred Java servlet container.

### DOWNLOAD THE WAR ###

[jwordpress-4.4.1.war](http://maven.bytefox.it/it/bytefox/jwordpress/4.4.1/jwordpress-4.4.1.war)

and deploy on your favorite application server, or...


### MAKE YOUR BLOG WITH A MAVEN WAR OVERLAY ###

```
#!xml
<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="http://maven.apache.org/POM/4.0.0"
         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
    <modelVersion>4.0.0</modelVersion>

    <groupId>io.bonfab</groupId>
    <artifactId>blog</artifactId>
    <version>1.0-SNAPSHOT</version>
    <packaging>war</packaging>

    <dependencies>
        <dependency>
            <groupId>it.bytefox</groupId>
            <artifactId>jwordpress</artifactId>
            <version>4.4.1</version>
            <type>war</type>
        </dependency>

        <dependency>
            <groupId>mysql</groupId>
            <artifactId>mysql-connector-java</artifactId>
            <version>5.1.30</version>
            <scope>provided</scope>
        </dependency>
    </dependencies>

    <repositories>
        <repository>
            <id>bytefox</id>
            <url>http://maven.bytefox.it/</url>
            <snapshots><enabled>true</enabled></snapshots>
        </repository>
    </repositories>

	<build>
	  <plugins>
	    <plugin>
	      <groupId>org.apache.tomcat.maven</groupId>
	      <artifactId>tomcat7-maven-plugin</artifactId>
	      <version>2.2</version>
	      <configuration>
	        <path>/</path>
	        <port>8080</port>
	      </configuration>
	      <dependencies>
	        <dependency>
	          <groupId>mysql</groupId>
	          <artifactId>mysql-connector-java</artifactId>
	          <version>5.1.30</version>
	        </dependency>
	      </dependencies>
	    </plugin>
	  </plugins>
	</build>

</project>

```
And quickly deploy it with

`mvn tomcat7:run-war`