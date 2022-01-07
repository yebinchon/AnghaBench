
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct server_pool {scalar_t__ server_connections; int redis; } ;
struct server {scalar_t__ ns_conn_q; int s_conn_q; struct server_pool* owner; } ;
struct conn {int proxy; int client; } ;


 int ASSERT (int) ;
 struct conn* TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct conn*,int ) ;
 int TAILQ_REMOVE (int *,struct conn*,int ) ;
 struct conn* conn_get (struct server*,int,int ) ;
 int conn_tqe ;

struct conn *
server_conn(struct server *server)
{
    struct server_pool *pool;
    struct conn *conn;

    pool = server->owner;







    if (server->ns_conn_q < pool->server_connections) {
        return conn_get(server, 0, pool->redis);
    }
    ASSERT(server->ns_conn_q == pool->server_connections);





    conn = TAILQ_FIRST(&server->s_conn_q);
    ASSERT(!conn->client && !conn->proxy);

    TAILQ_REMOVE(&server->s_conn_q, conn, conn_tqe);
    TAILQ_INSERT_TAIL(&server->s_conn_q, conn, conn_tqe);

    return conn;
}
