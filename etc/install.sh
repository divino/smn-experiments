#!/bin/sh

sudo npm -g install bower
sudo npm -g install gulp
sudo npm -g install forever

cd ..
npm install
bower install
gulp build

cd /etc
sudo ln -s /space/projects/smn-experiments.live/etc/prod smn-experiments
cd /etc/init.d
sudo ln -s /space/projects/smn-experiments.live/etc/init.d/node-express-service smn-experiments
sudo chkconfig --add smn-experiments
sudo chkconfig --levels 2345 smn-experiments on
