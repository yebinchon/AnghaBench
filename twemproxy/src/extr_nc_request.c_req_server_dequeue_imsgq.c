
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg {int request; int mlen; } ;
struct context {int dummy; } ;
struct conn {int owner; int imsg_q; int proxy; int client; } ;


 int ASSERT (int) ;
 int TAILQ_REMOVE (int *,struct msg*,int ) ;
 int in_queue ;
 int in_queue_bytes ;
 int s_tqe ;
 int stats_server_decr (struct context*,int ,int ) ;
 int stats_server_decr_by (struct context*,int ,int ,int ) ;

void
req_server_dequeue_imsgq(struct context *ctx, struct conn *conn, struct msg *msg)
{
    ASSERT(msg->request);
    ASSERT(!conn->client && !conn->proxy);

    TAILQ_REMOVE(&conn->imsg_q, msg, s_tqe);

    stats_server_decr(ctx, conn->owner, in_queue);
    stats_server_decr_by(ctx, conn->owner, in_queue_bytes, msg->mlen);
}
