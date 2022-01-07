
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct server_pool {int ctx; } ;
struct server {scalar_t__ ns_conn_q; int s_conn_q; struct server_pool* owner; } ;
struct conn {int (* close ) (int ,struct conn*) ;} ;
typedef int rstatus_t ;


 int ASSERT (int) ;
 int NC_OK ;
 int TAILQ_EMPTY (int *) ;
 struct conn* TAILQ_FIRST (int *) ;
 int stub1 (int ,struct conn*) ;

__attribute__((used)) static rstatus_t
server_each_disconnect(void *elem, void *data)
{
    struct server *server;
    struct server_pool *pool;

    server = elem;
    pool = server->owner;

    while (!TAILQ_EMPTY(&server->s_conn_q)) {
        struct conn *conn;

        ASSERT(server->ns_conn_q > 0);

        conn = TAILQ_FIRST(&server->s_conn_q);
        conn->close(pool->ctx, conn);
    }

    return NC_OK;
}
