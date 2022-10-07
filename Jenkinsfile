pipeline{
    agent any
    tools{
        maven 'M2'
    }
    stages{
        stage('clone'){
            steps{
                git credentialsId: 'gitlab', url: 'git@gitlab.com:samiibnbougatef/projet_j2e.git'
            }
        }
         stage('build'){
        steps{
             sh 'mvn clean install package'
         }
     }
    stage('docker'){
        steps{
            sh 'docker rm -f projet6'
            sh 'cp -f /var/lib/jenkins/workspace/projet6/webapp/target/webapp.war /home/ansadmin/projet6/ressources/webapp.war'
            sh 'docker build -t tomcat /home/ansadmin/projet6/.'
            sh 'docker run -d --name projet6 -p 8083:8080 tomcat'
        }
    }
        
        
    }
}
