pipeline {
    agent any

    tools {
        maven 'mvn352'
        jdk 'jdk8'
    }

    stages {
        stage ('Initialize') {
            steps {
                sh '''
                    echo "PATH = ${PATH}"
                    echo "M2_HOME = ${M2_HOME}"
                '''
            }
        }

        stage('Test') {
            steps {
                sh 'mvn clean test'
            }
        }

         stage ('Build') {
            steps {
                sh 'mvn -DskipTests install'
            }
            post {
                success {
                    junit 'target/surefire-reports/**/*.xml'
                }
            }
        }
    }
}