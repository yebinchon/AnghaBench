
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data; int len; } ;
struct server {scalar_t__ ns_conn_q; TYPE_1__ pname; int s_conn_q; } ;
struct conn {struct server* owner; int proxy; int client; } ;


 int ASSERT (int) ;
 int LOG_VVERB ;
 int TAILQ_REMOVE (int *,struct conn*,int ) ;
 int conn_tqe ;
 int log_debug (int ,char*,struct conn*,struct server*,int ,int ) ;

void
server_unref(struct conn *conn)
{
    struct server *server;

    ASSERT(!conn->client && !conn->proxy);
    ASSERT(conn->owner != ((void*)0));

    server = conn->owner;
    conn->owner = ((void*)0);

    ASSERT(server->ns_conn_q != 0);
    server->ns_conn_q--;
    TAILQ_REMOVE(&server->s_conn_q, conn, conn_tqe);

    log_debug(LOG_VVERB, "unref conn %p owner %p from '%.*s'", conn, server,
              server->pname.len, server->pname.data);
}
