FROM golang:1.16-alpine

RUN apk add --no-cache git bash 

WORKDIR /app

COPY . .

RUN go mod tidy
RUN GOOS=linux GOARCH=amd64 go build -o binary


EXPOSE 8080

CMD ["./binary"]