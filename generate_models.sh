#!/bin/bash - 
export LANG=zh_CN.UTF-8
#===============================================================================
#
#          FILE: generate_model.sh
# 
#         USAGE: ./generate_model.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: 张翼 (), stonecold.zhang@dianping.com
#  ORGANIZATION: 
#       CREATED: 2014年06月12日 17:22
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

cd `dirname $0`
echo `pwd`

rm -rf models
python scripts/generate_models.py

mv models/default.py models.py
rm -rf models

