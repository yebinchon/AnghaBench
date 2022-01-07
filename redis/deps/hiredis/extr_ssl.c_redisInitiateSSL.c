
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int redisContext ;
typedef int SSL ;


 int redisSSLConnect (int *,int *,int *) ;

int redisInitiateSSL(redisContext *c, SSL *ssl) {
    return redisSSLConnect(c, ((void*)0), ssl);
}
