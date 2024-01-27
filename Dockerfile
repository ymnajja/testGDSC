FROM golang:1.16.3-alpine3.13

COPY go.mod /app/
COPY go.sum /app/
COPY server.go /app/
WORKDIR /app/
RUN go mod download
CMD ["go","run","server.go"]