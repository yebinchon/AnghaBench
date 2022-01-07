
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data; int len; } ;
struct server {TYPE_1__ pname; } ;
struct context {int dummy; } ;
struct conn {int connected; int sd; int (* post_connect ) (struct context*,struct conn*,struct server*) ;scalar_t__ connecting; int proxy; int client; struct server* owner; } ;


 int ASSERT (int) ;
 int LOG_INFO ;
 int log_debug (int ,char*,int ,int ,int ) ;
 int server_connections ;
 int stats_server_incr (struct context*,struct server*,int ) ;
 int stub1 (struct context*,struct conn*,struct server*) ;

void
server_connected(struct context *ctx, struct conn *conn)
{
    struct server *server = conn->owner;

    ASSERT(!conn->client && !conn->proxy);
    ASSERT(conn->connecting && !conn->connected);

    stats_server_incr(ctx, server, server_connections);

    conn->connecting = 0;
    conn->connected = 1;

    conn->post_connect(ctx, conn, server);

    log_debug(LOG_INFO, "connected on s %d to server '%.*s'", conn->sd,
              server->pname.len, server->pname.data);
}
