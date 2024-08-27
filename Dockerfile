# 명령어를 실행할 때 마다(RUN) 레이어가 생성되기 떄문에 되도록 명령어는 한 줄로 작성하는 것이 좋다.
FROM ubuntu:20.04
RUN apt update && apt install -y python3
# 디렉토리 없으면 생성 & 이동 & /var/www/html을 대상으로 명령어 실행
WORKDIR /var/www/html
# host의 index.html을 /var/www/html로 복사
# COPY ["index.html", "."]
# RUN: 빌드가 되는 시점에 실행되는 명령어(image에 반영), CMD: 컨테이너가 실행될 떄 실행(container에 반영)
CMD ["python3", "-u", "-m", "http.server"]