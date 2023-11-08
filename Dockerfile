FROM openjdk:21-slim

# 设置大陆时区
ENV TZ Asia/Shanghai

# 切换工作目录
WORKDIR /home

# 复制文件到工作目录
COPY ./ /home

# 赋予权限/归递
RUN chmod -R 777 /tmp
RUN chmod -R 777 /home

# 安装所需工具
RUN apt update
RUN apt install -y jq
RUN apt install -y curl
RUN apt install -y procps

# 暴露端口
EXPOSE 7860

# 看看抱脸的CPU
RUN lscpu

# 看看抱脸的内存
RUN free -m

# 启动！
CMD bash app