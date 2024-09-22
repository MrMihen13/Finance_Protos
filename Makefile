gen-profile:
	protoc \
    	-I proto \
    	proto/profile/profile.proto \
    	--go_out=./gen/go \
    	--go_opt=paths=source_relative \
    	--go-grpc_out=./gen/go  \
    	--go-grpc_opt=paths=source_relative

gen-accounts:
	protoc \
		-I proto \
        proto/accounts/*.proto \
        --go_out=./gen/go \
        --go_opt=paths=source_relative \
        --go-grpc_out=./gen/go  \
        --go-grpc_opt=paths=source_relative
