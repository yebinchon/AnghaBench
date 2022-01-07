
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data; int len; } ;
struct server_pool {scalar_t__ nc_conn_q; TYPE_1__ name; int c_conn_q; } ;
struct conn {struct server_pool* owner; int proxy; scalar_t__ client; } ;


 int ASSERT (int) ;
 int LOG_VVERB ;
 int TAILQ_REMOVE (int *,struct conn*,int ) ;
 int conn_tqe ;
 int log_debug (int ,char*,struct conn*,struct server_pool*,int ,int ) ;

void
client_unref(struct conn *conn)
{
    struct server_pool *pool;

    ASSERT(conn->client && !conn->proxy);
    ASSERT(conn->owner != ((void*)0));

    pool = conn->owner;
    conn->owner = ((void*)0);

    ASSERT(pool->nc_conn_q != 0);
    pool->nc_conn_q--;
    TAILQ_REMOVE(&pool->c_conn_q, conn, conn_tqe);

    log_debug(LOG_VVERB, "unref conn %p owner %p from pool '%.*s'", conn,
              pool, pool->name.len, pool->name.data);
}
