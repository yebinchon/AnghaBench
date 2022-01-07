
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config {scalar_t__ type; } ;
typedef int redisContext ;


 scalar_t__ CONN_SSL ;
 int do_ssl_handshake (int *,struct config) ;
 int redisReconnect (int *) ;

__attribute__((used)) static void do_reconnect(redisContext *c, struct config config) {
    redisReconnect(c);

    if (config.type == CONN_SSL) {
        do_ssl_handshake(c, config);
    }
}
