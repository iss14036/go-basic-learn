FROM golang:latest

RUN apt-get update
RUN apt-get upgrade -y

ENV GOBIN /go/bin

RUN go get github.com/go-sql-driver/mysql
RUN go get -u github.com/gorilla/mux
RUN go get github.com/joho/godotenv

COPY . /go-basic-learn/

CMD ["go" ,"run", "/go-basic-learn/main.go"]

