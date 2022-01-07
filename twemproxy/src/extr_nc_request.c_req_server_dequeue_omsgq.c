
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg {int request; int mlen; } ;
struct context {int dummy; } ;
struct conn {int owner; int omsg_q; int proxy; int client; } ;


 int ASSERT (int) ;
 int TAILQ_REMOVE (int *,struct msg*,int ) ;
 int msg_tmo_delete (struct msg*) ;
 int out_queue ;
 int out_queue_bytes ;
 int s_tqe ;
 int stats_server_decr (struct context*,int ,int ) ;
 int stats_server_decr_by (struct context*,int ,int ,int ) ;

void
req_server_dequeue_omsgq(struct context *ctx, struct conn *conn, struct msg *msg)
{
    ASSERT(msg->request);
    ASSERT(!conn->client && !conn->proxy);

    msg_tmo_delete(msg);

    TAILQ_REMOVE(&conn->omsg_q, msg, s_tqe);

    stats_server_decr(ctx, conn->owner, out_queue);
    stats_server_decr_by(ctx, conn->owner, out_queue_bytes, msg->mlen);
}
