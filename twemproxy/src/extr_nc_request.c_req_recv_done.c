
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct server_pool {int ncontinuum; } ;
struct msg_tqh {int dummy; } ;
struct msg {int request; scalar_t__ (* reply ) (struct msg*) ;scalar_t__ (* fragment ) (struct msg*,int ,struct msg_tqh*) ;int noreply; scalar_t__ noforward; struct conn* owner; } ;
struct context {int evb; } ;
struct conn {int (* enqueue_outq ) (struct context*,struct conn*,struct msg*) ;struct server_pool* owner; void* err; struct msg* rmsg; int proxy; scalar_t__ client; } ;
typedef scalar_t__ rstatus_t ;


 int ASSERT (int) ;
 scalar_t__ NC_OK ;
 int TAILQ_EMPTY (struct msg_tqh*) ;
 struct msg* TAILQ_FIRST (struct msg_tqh*) ;
 int TAILQ_INIT (struct msg_tqh*) ;
 struct msg* TAILQ_NEXT (struct msg*,int ) ;
 int TAILQ_REMOVE (struct msg_tqh*,struct msg*,int ) ;
 void* errno ;
 scalar_t__ event_add_out (int ,struct conn*) ;
 int m_tqe ;
 scalar_t__ req_filter (struct context*,struct conn*,struct msg*) ;
 int req_forward (struct context*,struct conn*,struct msg*) ;
 int req_forward_error (struct context*,struct conn*,struct msg*) ;
 scalar_t__ req_make_reply (struct context*,struct conn*,struct msg*) ;
 scalar_t__ stub1 (struct msg*) ;
 scalar_t__ stub2 (struct msg*,int ,struct msg_tqh*) ;
 int stub3 (struct context*,struct conn*,struct msg*) ;
 int stub4 (struct context*,struct conn*,struct msg*) ;

void
req_recv_done(struct context *ctx, struct conn *conn, struct msg *msg,
              struct msg *nmsg)
{
    rstatus_t status;
    struct server_pool *pool;
    struct msg_tqh frag_msgq;
    struct msg *sub_msg;
    struct msg *tmsg;

    ASSERT(conn->client && !conn->proxy);
    ASSERT(msg->request);
    ASSERT(msg->owner == conn);
    ASSERT(conn->rmsg == msg);
    ASSERT(nmsg == ((void*)0) || nmsg->request);


    conn->rmsg = nmsg;

    if (req_filter(ctx, conn, msg)) {
        return;
    }

    if (msg->noforward) {
        status = req_make_reply(ctx, conn, msg);
        if (status != NC_OK) {
            conn->err = errno;
            return;
        }

        status = msg->reply(msg);
        if (status != NC_OK) {
            conn->err = errno;
            return;
        }

        status = event_add_out(ctx->evb, conn);
        if (status != NC_OK) {
            conn->err = errno;
        }

        return;
    }


    pool = conn->owner;
    TAILQ_INIT(&frag_msgq);
    status = msg->fragment(msg, pool->ncontinuum, &frag_msgq);
    if (status != NC_OK) {
        if (!msg->noreply) {
            conn->enqueue_outq(ctx, conn, msg);
        }
        req_forward_error(ctx, conn, msg);
    }


    if (TAILQ_EMPTY(&frag_msgq)) {
        req_forward(ctx, conn, msg);
        return;
    }

    status = req_make_reply(ctx, conn, msg);
    if (status != NC_OK) {
        if (!msg->noreply) {
            conn->enqueue_outq(ctx, conn, msg);
        }
        req_forward_error(ctx, conn, msg);
    }

    for (sub_msg = TAILQ_FIRST(&frag_msgq); sub_msg != ((void*)0); sub_msg = tmsg) {
        tmsg = TAILQ_NEXT(sub_msg, m_tqe);

        TAILQ_REMOVE(&frag_msgq, sub_msg, m_tqe);
        req_forward(ctx, conn, sub_msg);
    }

    ASSERT(TAILQ_EMPTY(&frag_msgq));
    return;
}
