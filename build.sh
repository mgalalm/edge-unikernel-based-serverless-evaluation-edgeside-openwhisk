#!/bin/sh
#cd $HOME/src && go build -o exec  -ldflags "-X main.OwExecutionEnv=mgalalm/action-golang-v1.17:rpi -X main._os.__OW_EXECUTION_ENV=mgalalm/action-golang-v1.17:rpi" && \
#zip -r ../exec.zip *  &&  cd $HOME && wsk -i action create $1 exec.zip --docker mgalalm/action-golang-v1.17:rpi &&  wsk -i action invoke $1 --result -v 
cd $HOME/src &&  docker run -i  mgalalm/action-golang-v1.17:rpi  -compile main <$1.go> $1.zip && unzip -vl $1.zip
