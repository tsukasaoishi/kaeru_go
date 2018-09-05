.PHONY: deps clean build

deps:
	go get -u github.com/aws/aws-lambda-go/events
	go get -u github.com/aws/aws-lambda-go/lambda

clean: 
	rm -rf ./article-show/article-show
	
build:
	GOOS=linux GOARCH=amd64 go build -o article-show/article-show ./article-show
