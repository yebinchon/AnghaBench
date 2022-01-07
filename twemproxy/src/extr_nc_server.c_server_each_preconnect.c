
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct server_pool {int ctx; } ;
struct TYPE_2__ {int data; int len; } ;
struct server {TYPE_1__ pname; struct server_pool* owner; } ;
struct conn {int dummy; } ;
typedef scalar_t__ rstatus_t ;


 scalar_t__ NC_ENOMEM ;
 scalar_t__ NC_OK ;
 int errno ;
 int log_warn (char*,int ,int ,int ) ;
 int server_close (int ,struct conn*) ;
 struct conn* server_conn (struct server*) ;
 scalar_t__ server_connect (int ,struct server*,struct conn*) ;
 int strerror (int ) ;

__attribute__((used)) static rstatus_t
server_each_preconnect(void *elem, void *data)
{
    rstatus_t status;
    struct server *server;
    struct server_pool *pool;
    struct conn *conn;

    server = elem;
    pool = server->owner;

    conn = server_conn(server);
    if (conn == ((void*)0)) {
        return NC_ENOMEM;
    }

    status = server_connect(pool->ctx, server, conn);
    if (status != NC_OK) {
        log_warn("connect to server '%.*s' failed, ignored: %s",
                 server->pname.len, server->pname.data, strerror(errno));
        server_close(pool->ctx, conn);
    }

    return NC_OK;
}
