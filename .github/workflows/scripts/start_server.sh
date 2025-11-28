#!/bin/bash
# 기존 서버 프로세스 종료 (선택 사항)
# ps -ef | grep node | grep -v grep | awk '{print $2}' | xargs kill -9

# Node.js 애플리케이션 시작
cd /home/ec2-user/app
npm install
nohup node server.js > /dev/null 2>&1 &
