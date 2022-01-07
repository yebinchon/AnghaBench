
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct msg {int done; struct conn* owner; int (* pre_coalesce ) (struct msg*) ;struct msg* peer; scalar_t__ request; int mlen; } ;
struct context {int evb; } ;
struct conn {int owner; int err; int omsg_q; int proxy; scalar_t__ client; int (* dequeue_outq ) (struct context*,struct conn*,struct msg*) ;} ;
typedef scalar_t__ rstatus_t ;


 int ASSERT (int) ;
 scalar_t__ NC_OK ;
 struct msg* TAILQ_FIRST (int *) ;
 int errno ;
 scalar_t__ event_add_out (int ,struct conn*) ;
 scalar_t__ req_done (struct conn*,struct msg*) ;
 int rsp_forward_stats (struct context*,int ,struct msg*,int ) ;
 int server_ok (struct context*,struct conn*) ;
 int stub1 (struct context*,struct conn*,struct msg*) ;
 int stub2 (struct msg*) ;

__attribute__((used)) static void
rsp_forward(struct context *ctx, struct conn *s_conn, struct msg *msg)
{
    rstatus_t status;
    struct msg *pmsg;
    struct conn *c_conn;
    uint32_t msgsize;

    ASSERT(!s_conn->client && !s_conn->proxy);
    msgsize = msg->mlen;


    server_ok(ctx, s_conn);


    pmsg = TAILQ_FIRST(&s_conn->omsg_q);
    ASSERT(pmsg != ((void*)0) && pmsg->peer == ((void*)0));
    ASSERT(pmsg->request && !pmsg->done);

    s_conn->dequeue_outq(ctx, s_conn, pmsg);
    pmsg->done = 1;


    pmsg->peer = msg;
    msg->peer = pmsg;

    msg->pre_coalesce(msg);

    c_conn = pmsg->owner;
    ASSERT(c_conn->client && !c_conn->proxy);

    if (req_done(c_conn, TAILQ_FIRST(&c_conn->omsg_q))) {
        status = event_add_out(ctx->evb, c_conn);
        if (status != NC_OK) {
            c_conn->err = errno;
        }
    }

    rsp_forward_stats(ctx, s_conn->owner, msg, msgsize);
}
