
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg {int request; struct conn* owner; } ;
struct context {int dummy; } ;
struct conn {struct msg* rmsg; int proxy; int client; } ;


 int ASSERT (int) ;
 scalar_t__ rsp_filter (struct context*,struct conn*,struct msg*) ;
 int rsp_forward (struct context*,struct conn*,struct msg*) ;

void
rsp_recv_done(struct context *ctx, struct conn *conn, struct msg *msg,
              struct msg *nmsg)
{
    ASSERT(!conn->client && !conn->proxy);
    ASSERT(msg != ((void*)0) && conn->rmsg == msg);
    ASSERT(!msg->request);
    ASSERT(msg->owner == conn);
    ASSERT(nmsg == ((void*)0) || !nmsg->request);


    conn->rmsg = nmsg;

    if (rsp_filter(ctx, conn, msg)) {
        return;
    }

    rsp_forward(ctx, conn, msg);
}
