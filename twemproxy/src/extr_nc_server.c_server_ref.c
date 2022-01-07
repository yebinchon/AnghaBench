
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data; int len; } ;
struct server {TYPE_1__ pname; int s_conn_q; int ns_conn_q; } ;
struct conn {int * owner; int proxy; int client; } ;


 int ASSERT (int) ;
 int LOG_VVERB ;
 int TAILQ_INSERT_TAIL (int *,struct conn*,int ) ;
 int conn_tqe ;
 int log_debug (int ,char*,struct conn*,struct server*,int ,int ) ;
 int server_resolve (struct server*,struct conn*) ;

void
server_ref(struct conn *conn, void *owner)
{
    struct server *server = owner;

    ASSERT(!conn->client && !conn->proxy);
    ASSERT(conn->owner == ((void*)0));

    server_resolve(server, conn);

    server->ns_conn_q++;
    TAILQ_INSERT_TAIL(&server->s_conn_q, conn, conn_tqe);

    conn->owner = owner;

    log_debug(LOG_VVERB, "ref conn %p owner %p into '%.*s", conn, server,
              server->pname.len, server->pname.data);
}
