//PASSS OR PAS3 (pipeline agent stages stage steps)
//code ->build ->test ->scan->aritifacts->deploy
 CODE --> BUILD --> TEST -->Code Review --> ARTIFACT --> Deployment



pipeline {
    agent any
    stages {
        stage('checkout') {
            steps {
                git 'https://github.com/Mounikaendukuri/java-project-maven-new.git'
            }
        }
        stage('compile') {
            steps {
                sh 'mvn compile'
            }
        }
        stage('test') {
            steps {
                sh 'mvn test'
            }
        }
        stage('code review') {
            steps {
                echo 'sonarqube will check code quality'
            }
        }
        stage('artifacts') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('deployment') {
            steps {
                echo 'deployement of code in docker/tomcat'
            }
        }
    }
}