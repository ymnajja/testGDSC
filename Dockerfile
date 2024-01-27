FROM golang:12.7.0-alpine3.10

COPY go.mod /app/
COPY go.sum /app/
COPY server.go /app/
WORKDIR /app/
RUN go mod download
CMD ["go","run","server.go"]