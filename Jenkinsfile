pipeline {
    agent any
    
    stages {
        stage ("checkout from GIT") {
            steps {
                git branch: 'main', credentialsId: '38954d07-1789-43ec-99bf-6f874f9ea731', url: 'https://github.com/srinivas325/tff.git'
            }
        }
        
        stage ("AWS credentials") {
            steps {
                withAWS(credentials: 'aws-credentials')
            }
        }
        stage ("terraform init") {
            steps {
                bat 'terraform init'
            }
        }
        stage ("terraform fmt") {
            steps {
                bat 'terraform fmt'
            }
        }
        stage ("terraform validate") {
            steps {
                bat 'terraform validate'
            }
        }
        stage ("terrafrom plan") {
            steps {
                bat 'terraform plan '
            }
        }
        stage ("terraform apply") {
            steps {
                bat 'terraform apply --auto-approve'
            }
        }
    }
}
