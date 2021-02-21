FROM kalilinux/kali-rolling
ARG DEBIAN_FRONTEND=noninteractive
ENV TERM xterm-256color
RUN apt-get update && apt upgrade -y && apt-get install sudo -y
ENV APP_ID=2606989
ENV API_HASH=37d07be1705fdbc5cf6bb0b00833032f
ENV TG_BOT_TOKEN_BF_HER=1624627586:AAGBhAq5BHTQPf8oGThagJRrRbYUnoL5ByA
ENV STRING_SESSION=1AZWarzUBu18JO4OqQ-58X7YIDybGCL2SeIdObhuSvTZL3eKg_bCnAnof5h6_83-tsWbsJoooYXvi-Q_IIv0AIxC9t5NH17h-VIK1stpS2xY2SegdfBpEATdU7tf1OOCaHqGgKXPzKOTTjMWFEf2O_YeEPC_Pj6f3YgmlizT78grNcAeTLhdybjpsLKh31ASWX73ZJ-T4dvW3n5DaJ3vy4j9Du7LYghLyxhjj9K0YkaPoXHN3w3GVSsn_YwDF_mxEAev4NOLIis-zq8GppkTddVZSacfmqRpkbt8S3Xipjn5TCCGAJkLlUVsWm9MhNK4xrvqik7eXO8fvt8VP5YDYvP0l1nNUPfw=
ENV PRIVATE_GROUP_ID=-434137430
ENV DATABASE_URL=postgres://jnsspgnt:3PC0x8HbZ4ZGI4C1ap4iNRMC6qxK1PXy@hansken.db.elephantsql.com:5432/jnsspgnt

EXPOSE 9876

RUN apt-get install -y xz-utils

COPY start.sh /start.sh

CMD ["bash","/start.sh"]
