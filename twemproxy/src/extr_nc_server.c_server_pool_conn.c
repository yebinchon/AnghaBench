
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct server_pool {int dummy; } ;
struct server {int dummy; } ;
struct context {int dummy; } ;
struct conn {int dummy; } ;
typedef scalar_t__ rstatus_t ;


 scalar_t__ NC_OK ;
 int server_close (struct context*,struct conn*) ;
 struct conn* server_conn (struct server*) ;
 scalar_t__ server_connect (struct context*,struct server*,struct conn*) ;
 struct server* server_pool_server (struct server_pool*,int *,int ) ;
 scalar_t__ server_pool_update (struct server_pool*) ;

struct conn *
server_pool_conn(struct context *ctx, struct server_pool *pool, uint8_t *key,
                 uint32_t keylen)
{
    rstatus_t status;
    struct server *server;
    struct conn *conn;

    status = server_pool_update(pool);
    if (status != NC_OK) {
        return ((void*)0);
    }


    server = server_pool_server(pool, key, keylen);
    if (server == ((void*)0)) {
        return ((void*)0);
    }


    conn = server_conn(server);
    if (conn == ((void*)0)) {
        return ((void*)0);
    }

    status = server_connect(ctx, server, conn);
    if (status != NC_OK) {
        server_close(ctx, conn);
        return ((void*)0);
    }

    return conn;
}
