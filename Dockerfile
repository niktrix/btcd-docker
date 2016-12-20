FROM golang:1.7-wheezy

RUN  go get -u github.com/Masterminds/glide \
 &&  go get github.com/btcsuite/btcd \
 &&  cd $GOPATH/src/github.com/btcsuite/btcd \
 &&  glide install \
 &&  go install . ./cmd/...

CMD ["btcd"]


