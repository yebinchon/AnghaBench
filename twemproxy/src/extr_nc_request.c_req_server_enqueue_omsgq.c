
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg {int request; int mlen; } ;
struct context {int dummy; } ;
struct conn {int owner; int omsg_q; int proxy; int client; } ;


 int ASSERT (int) ;
 int TAILQ_INSERT_TAIL (int *,struct msg*,int ) ;
 int out_queue ;
 int out_queue_bytes ;
 int s_tqe ;
 int stats_server_incr (struct context*,int ,int ) ;
 int stats_server_incr_by (struct context*,int ,int ,int ) ;

void
req_server_enqueue_omsgq(struct context *ctx, struct conn *conn, struct msg *msg)
{
    ASSERT(msg->request);
    ASSERT(!conn->client && !conn->proxy);

    TAILQ_INSERT_TAIL(&conn->omsg_q, msg, s_tqe);

    stats_server_incr(ctx, conn->owner, out_queue);
    stats_server_incr_by(ctx, conn->owner, out_queue_bytes, msg->mlen);
}
