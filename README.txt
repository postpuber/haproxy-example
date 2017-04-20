Redis接続先をProxyする
-----

## Overview

RedisをForwardするためのHAProxy

## Usage

### Build.

```
$ docker build --force-rm . -t redis-forward
```

### Run

`REDIS_HOST`にはフォワード先のホストを指定する。

```
$ docker run -d -e REDIS_HOST=localhost -p 6379:6379 -p 80:80 redis-forward
```

### 管理画面(統計情報)

`http://host-or-ip/stats`

