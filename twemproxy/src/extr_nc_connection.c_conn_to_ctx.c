
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct server_pool {struct context* ctx; struct server_pool* owner; } ;
struct server {struct context* ctx; struct server* owner; } ;
struct context {int dummy; } ;
struct conn {struct server_pool* owner; scalar_t__ client; scalar_t__ proxy; } ;



struct context *
conn_to_ctx(struct conn *conn)
{
    struct server_pool *pool;

    if (conn->proxy || conn->client) {
        pool = conn->owner;
    } else {
        struct server *server = conn->owner;
        pool = server->owner;
    }

    return pool->ctx;
}
