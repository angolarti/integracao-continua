FROM golang:latest

WORKDIR /app

COPY . .

RUN go mod init pluralsis.co.ao/m \
    && go build -o math

CMD ["./math"]