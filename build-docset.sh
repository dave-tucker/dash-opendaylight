#!/bin/bash

set -e

export DOC_VERSION=0.2.0
mkdir build
cd build

curl -O https://jenkins.opendaylight.org/controller/job/controller-merge/lastSuccessfulBuild/artifact/target/releasepom-${DOC_VERSION}-SNAPSHOT-javadoc.jar

tar -xf releasepom-${DOC_VERSION}-SNAPSHOT-javadoc.jar

rm releasepom-${DOC_VERSION}-SNAPSHOT-javadoc.jar

cd ..

./bin/javadocset OpenDaylight build

rm -r build

