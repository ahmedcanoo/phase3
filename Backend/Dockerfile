#base image for go
FROM golang:1.23
WORKDIR /app
COPY go.mod go.sum ./
RUN go mod download
#copy from the root directory to current /app
COPY . .
RUN go build -o main .
EXPOSE 8001
#default command to run when the container starts
CMD ["./main"]
