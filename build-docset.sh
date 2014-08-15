#!/bin/bash

set -e

mkdir build
cd build

curl -O https://jenkins.opendaylight.org/controller/job/controller-merge/lastSuccessfulBuild/artifact/target/releasepom-0.1.2-SNAPSHOT-javadoc.jar

tar -xf releasepom-0.1.2-SNAPSHOT-javadoc.jar

rm releasepom-0.1.2-SNAPSHOT-javadoc.jar

cd ..

./bin/javadocset OpenDaylight build

rm -r build

