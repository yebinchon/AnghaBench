
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg {int request; int mlen; int noreply; } ;
struct context {int dummy; } ;
struct conn {int owner; int imsg_q; int proxy; int client; } ;


 int ASSERT (int) ;
 int TAILQ_INSERT_TAIL (int *,struct msg*,int ) ;
 int in_queue ;
 int in_queue_bytes ;
 int msg_tmo_insert (struct msg*,struct conn*) ;
 int s_tqe ;
 int stats_server_incr (struct context*,int ,int ) ;
 int stats_server_incr_by (struct context*,int ,int ,int ) ;

void
req_server_enqueue_imsgq(struct context *ctx, struct conn *conn, struct msg *msg)
{
    ASSERT(msg->request);
    ASSERT(!conn->client && !conn->proxy);
    if (!msg->noreply) {
        msg_tmo_insert(msg, conn);
    }

    TAILQ_INSERT_TAIL(&conn->imsg_q, msg, s_tqe);

    stats_server_incr(ctx, conn->owner, in_queue);
    stats_server_incr_by(ctx, conn->owner, in_queue_bytes, msg->mlen);
}
