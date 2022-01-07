
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; } ;
struct server_pool {int redis_db; TYPE_1__ name; } ;
struct TYPE_4__ {int data; } ;
struct server {TYPE_2__ name; struct server_pool* owner; } ;
struct msg {int swallow; int * owner; int result; int type; } ;
struct context {int dummy; } ;
struct conn {int redis; scalar_t__ connected; int client; } ;
typedef scalar_t__ rstatus_t ;


 int ASSERT (int) ;
 int LOG_NOTICE ;
 int MSG_PARSE_OK ;
 int MSG_REQ_REDIS_SELECT ;
 scalar_t__ NC_OK ;
 scalar_t__ log10 (int) ;
 int log_debug (int ,char*,int,int ,int ) ;
 struct msg* msg_get (struct conn*,int,int) ;
 scalar_t__ msg_prepend_format (struct msg*,char*,int,int) ;
 int msg_put (struct msg*) ;
 int msg_send (struct context*,struct conn*) ;
 int req_server_enqueue_imsgq_head (struct context*,struct conn*,struct msg*) ;

void
redis_post_connect(struct context *ctx, struct conn *conn, struct server *server)
{
    rstatus_t status;
    struct server_pool *pool = server->owner;
    struct msg *msg;
    int digits;

    ASSERT(!conn->client && conn->connected);
    ASSERT(conn->redis);







    if (pool->redis_db <= 0) {
        return;
    }






    msg = msg_get(conn, 1, conn->redis);
    if (msg == ((void*)0)) {
        return;
    }

    digits = (pool->redis_db >= 10) ? (int)log10(pool->redis_db) + 1 : 1;
    status = msg_prepend_format(msg, "*2\r\n$6\r\nSELECT\r\n$%d\r\n%d\r\n", digits, pool->redis_db);
    if (status != NC_OK) {
        msg_put(msg);
        return;
    }
    msg->type = MSG_REQ_REDIS_SELECT;
    msg->result = MSG_PARSE_OK;
    msg->swallow = 1;
    msg->owner = ((void*)0);


    req_server_enqueue_imsgq_head(ctx, conn, msg);
    msg_send(ctx, conn);

    log_debug(LOG_NOTICE, "sent 'SELECT %d' to %s | %s", pool->redis_db,
              pool->name.data, server->name.data);
}
