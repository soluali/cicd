pipeline {
    agent none 
    stages {
        stage('Compile') { 
            agent any 
            steps {
              sh 'ls && pwd'
              sh 'python -m py_compile flask.py'
              stash(name: 'compiled-results', includes: '*.py*') 
            }  
        }
        stage('Test - Hello')  {
          agent any 
          steps {
            echo "Hello Test!"
            sh 'echo  Hello Testing!'
            sh "ls && pwd"
          }
        }    
    }
}
