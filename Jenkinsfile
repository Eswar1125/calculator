pipeline{
    agent any

    stages{
        stage("Rcheckout"){
            steps{
               checkout scm
            }
        }
        stage("Install the dependencies"){
            steps{
                bat'python -m pip install -r requirements.txt'
            }
        }
        stage("Run tests"){
            steps{
                bat'python -m unittest test_calculator.py'
            }
        }
    }
    post{
        success{
            echo'Build successful'
        }
        failure{
            echo'Build failure'
        }
    }
}
