FROM golang:1.20
WORKDIR /app
COPY main.go .
RUN go build -o service1 main.go
EXPOSE 8001
CMD ["./service1"]

