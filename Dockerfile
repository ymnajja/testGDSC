FROM golang

COPY go.mod /app/
COPY go.sum /app/
COPY server.go /app/
WORKDIR /app/
RUN go mod download
CMD ["go","run","server.go"]