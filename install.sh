#!/bin/sh

: ${GOPATH:?"You must install Go and set your GOPATH: https://golang.org/doc/install"}

install_path=$GOPATH/src/github.com/mitchellh/packer

git clone git@github.com:elemental-imaging/packer.git $install_path
go get -u github.com/mitchellh/gox

cd $install_path

make updatedeps
make bin
