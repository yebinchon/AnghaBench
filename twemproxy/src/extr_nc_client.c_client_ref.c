
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data; int len; } ;
struct server_pool {TYPE_1__ name; int c_conn_q; int nc_conn_q; } ;
struct conn {int * owner; int * addr; scalar_t__ addrlen; scalar_t__ family; int proxy; scalar_t__ client; } ;


 int ASSERT (int) ;
 int LOG_VVERB ;
 int TAILQ_INSERT_TAIL (int *,struct conn*,int ) ;
 int conn_tqe ;
 int log_debug (int ,char*,struct conn*,struct server_pool*,int ,int ) ;

void
client_ref(struct conn *conn, void *owner)
{
    struct server_pool *pool = owner;

    ASSERT(conn->client && !conn->proxy);
    ASSERT(conn->owner == ((void*)0));






    conn->family = 0;
    conn->addrlen = 0;
    conn->addr = ((void*)0);

    pool->nc_conn_q++;
    TAILQ_INSERT_TAIL(&pool->c_conn_q, conn, conn_tqe);


    conn->owner = owner;

    log_debug(LOG_VVERB, "ref conn %p owner %p into pool '%.*s'", conn, pool,
              pool->name.len, pool->name.data);
}
