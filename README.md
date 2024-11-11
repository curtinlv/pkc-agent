# PKC反向代理
## 部署代理

### 方式一：使用Docker    
```bash
docker run -d -p 39901:39901 --name pkc-agent curtinlv/pkc-agent
```


### 方式二：使用Docker Compose部署（推荐）  
1、创建文件：`docker-compose.yml` 文件内容：
```yml
version: '3'

services:
  pkc-agent:
    image: curtinlv/pkc-agent
    container_name: pkc-agent   
    ports:
      - "39901:39901"
    restart: unless-stopped
```
2、启动命令：
```bash
docker-compose up -d
```

### 删除容器命令：
```bash
docker stop  pkc-agent
docker rm pkc-agent
```
docker-compose方式：
```bash
docker-compose down
```
### 代理地址
```http request
http://ip:39901  
```

