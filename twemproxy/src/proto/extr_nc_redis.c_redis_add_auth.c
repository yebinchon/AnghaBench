
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data; int len; } ;
struct server_pool {TYPE_1__ redis_auth; } ;
struct msg {int swallow; } ;
struct context {int dummy; } ;
struct conn {int authenticated; int (* enqueue_inq ) (struct context*,struct conn*,struct msg*) ;int err; int redis; struct server_pool* owner; int proxy; int client; } ;
typedef scalar_t__ rstatus_t ;


 int ASSERT (int) ;
 scalar_t__ NC_ENOMEM ;
 scalar_t__ NC_OK ;
 int conn_authenticated (struct conn*) ;
 int errno ;
 struct msg* msg_get (struct conn*,int,int ) ;
 scalar_t__ msg_prepend_format (struct msg*,char*,int ,int ) ;
 int msg_put (struct msg*) ;
 int stub1 (struct context*,struct conn*,struct msg*) ;

rstatus_t
redis_add_auth(struct context *ctx, struct conn *c_conn, struct conn *s_conn)
{
    rstatus_t status;
    struct msg *msg;
    struct server_pool *pool;

    ASSERT(!s_conn->client && !s_conn->proxy);
    ASSERT(!conn_authenticated(s_conn));

    pool = c_conn->owner;

    msg = msg_get(c_conn, 1, c_conn->redis);
    if (msg == ((void*)0)) {
        c_conn->err = errno;
        return NC_ENOMEM;
    }

    status = msg_prepend_format(msg, "*2\r\n$4\r\nAUTH\r\n$%d\r\n%s\r\n",
                                pool->redis_auth.len, pool->redis_auth.data);
    if (status != NC_OK) {
        msg_put(msg);
        return status;
    }

    msg->swallow = 1;
    s_conn->enqueue_inq(ctx, s_conn, msg);
    s_conn->authenticated = 1;

    return NC_OK;
}
