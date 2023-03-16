pipeline {
    agent any

    stages {
        stage('Terraform Init') {
            steps {
                sh "terraform init"
            }
        }
        stage('Terraform Apply') {
            steps {
                sh "terraform apply -auto-approve"
            }
        }
        stage('Ansible') {
            steps {
                sh "sleep 20 && ansible-playbook apache.yaml"
            }
        }
    }
}
