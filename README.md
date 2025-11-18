# spring-docker
We can create container images by following options.
1. Dockerfile approach
2. Using Google Jib
    Please add this plugin to your pom.xml in the plugin section
   <plugin>
     <groupId>com.google.cloud.tools</groupId>
     <artifactId>jib-maven-plugin</artifactId>
     <version>3.5.0</version>
     <configuration>
      <to>
         <image>spring-docker:1.0</image>
      </to>
     </configuration>
   </plugin>
Run following command to create the image
 mvn compile jib:dockerBuild
Check whether the image has been created or not using docker images command.
Please note docker daemon to be run in the local
3. Cloud native approach
   Run mvn spring-boot:build-image
