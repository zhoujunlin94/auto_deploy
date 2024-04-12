FROM maven:3.8.1-openjdk-8

ARG GPG_PRIVATE_KEY

RUN echo "-------------->"
RUN echo "$GPG_PRIVATE_KEY"


# 将发布脚本添加到容器中
COPY publish.sh /publish.sh

# 设置可执行权限
RUN chmod +x /publish.sh

# 运行发布脚本
ENTRYPOINT ["/publish.sh"]