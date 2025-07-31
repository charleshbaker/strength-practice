###############################################################################
#
# FileName: StrPracComPush.sh
# Author: Charles H. Baker
# Date: 20250729
# Purpose: Simple bash script to copy a file and commit it to git.
# ToDo: Maybe add a debug function, debug statements and error handling
#
#
# Copyright (C) 2025 Charles H. Baker
#    
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# should have received a copy of the GNU General Public License
# along with this program. If not, see <https://www.gnu.org/licenses/>.
#
################################################################################

#!/bin/bash

cur_date=$(date +%Y%m%d-%H%M)

cd ${HOME}/strength-practice

cp -p ${HOME}/chb-basb/02-Areas/Personal/Health/StrengthPractice.md ${HOME}/strength-practice/ES4FL.md

git status

git add ${HOME}/strength-practice/ES4FL.md 

git status

git commit --message "esf4l ${cur_date}"

date

git push origin main

date

