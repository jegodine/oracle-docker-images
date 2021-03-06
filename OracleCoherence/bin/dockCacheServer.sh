#!/bin/sh

SCRIPTS_DIR="$( cd "$( dirname "$0" )" && pwd )"
. $SCRIPTS_DIR/setDockerEnv.sh $*

# RUN THE DOCKER COMMAND
docker run -d \
 --net=host \
 -v $1:/u01/oracle/coherence_config \
 $DOCKER_IMAGE_NAME java -cp /u01/oracle/coherence_config:/u01/oracle/coherence/coherence/lib/coherence.jar \
 com.tangosol.net.DefaultCacheServer

