


# Generating clients

You'll need to protoc binary to generate clients. You can download it at https://github.com/protocolbuffers/protobuf/releases.

## Go

Install the golang extension using the Go cli tools (so install Go first).

```bash
go get github.com/whylabs/whylogs-proto
```

Create the client with

```bash
make go

# Or, if protoc isn't on the path
make go PROTOC_PATH=~/path/to/protoc
```
