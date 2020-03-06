#!/bin/bash

curl -o Dockerfile https://raw.githubusercontent.com/danger/swift/master/Dockerfile

sed -E "s/MAINTAINER (.*)/MAINTAINER tkww/" Dockerfile > Dockerfile2 && mv Dockerfile2 Dockerfile
sed -E "s/# (.*) # swiftlint/\1/" Dockerfile > Dockerfile2 && mv Dockerfile2 Dockerfile
sed -E "s/COPY \. _danger-swift/RUN git clone https:\/\/github.com\/danger\/swift.git _danger-swift/" Dockerfile > Dockerfile2 && mv Dockerfile2 Dockerfile