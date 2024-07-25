PROTO_FILES		= auth.proto

go:
	mkdir -p dist/go
	protoc	--go_out=dist/go --go_opt=paths=source_relative \
			--go-grpc_out=dist/go --go-grpc_opt=paths=source_relative \
			$(PROTO_FILES)

clean-go:
	rm -rf dist/go

clean:
	rm -rf dist