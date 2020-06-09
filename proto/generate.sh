#!/usr/bin/env bash

#for go-micro
for proto in **/*.proto; do
  protoc -I=$GOPATH/src:. --micro_out=paths=source_relative:. --go_out=paths=source_relative:. $proto
done

