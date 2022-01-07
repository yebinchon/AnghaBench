
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg {int request; } ;
struct context {int dummy; } ;
struct conn {int omsg_q; int proxy; scalar_t__ client; } ;


 int ASSERT (int) ;
 int TAILQ_REMOVE (int *,struct msg*,int ) ;
 int c_tqe ;

void
req_client_dequeue_omsgq(struct context *ctx, struct conn *conn, struct msg *msg)
{
    ASSERT(msg->request);
    ASSERT(conn->client && !conn->proxy);

    TAILQ_REMOVE(&conn->omsg_q, msg, c_tqe);
}
