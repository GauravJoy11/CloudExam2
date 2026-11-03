pipeline {
    agent any 
    stages {
        stage('Fetch from github') {
            steps {
                git credentialsId: 'git-pat-token', 
                    branch: 'main', 
                    url: 'https://github.com/GauravJoy11/CloudExam2.git'
            }
        }
        stage('Build an image') {
            steps {
                sh '''
                    docker build -t secondimage .
                    docker run --name secondcont -d secondimage:latest
                '''
            }
        }
    }
}

