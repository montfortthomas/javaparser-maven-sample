pipeline {
    agent any
     tools { 
        maven 'MAVEN' 
        }
    stages{
      stage("clone code")  {
            steps {
                script {
                    git 'https://github.com/alimelus/javaparser-maven-sample.git';
            }
            }
            }
        stage("mvn build") {
            steps {
                    sh 'mvn clean package'
         
                }
                }
        
        
        
        stage('Docker Build and Tag') {
           steps {               
                sh 'docker build -t sunku:nginx .' 
                //  sh 'docker tag nginxtest sunku/nginxtest:latest'
                // sh 'docker tag nginxtest sunku/nginxtest:$BUILD_NUMBER'
               
          }
        }
            }
    
    
            }
