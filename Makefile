PROTO_FILES		= auth.proto

go:
	protoc --go_out=. --go_opt=paths=source_relative $(PROTO_FILES)

clean-go:
	rm -rf *.go

clean: clean-go

re: clean go