
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg {int dummy; } ;
struct context {int dummy; } ;
struct conn {int recv_ready; struct msg* (* recv_next ) (struct context*,struct conn*,int) ;int recv_active; } ;
typedef scalar_t__ rstatus_t ;


 int ASSERT (int ) ;
 scalar_t__ NC_OK ;
 scalar_t__ msg_recv_chain (struct context*,struct conn*,struct msg*) ;
 struct msg* stub1 (struct context*,struct conn*,int) ;

rstatus_t
msg_recv(struct context *ctx, struct conn *conn)
{
    rstatus_t status;
    struct msg *msg;

    ASSERT(conn->recv_active);

    conn->recv_ready = 1;
    do {
        msg = conn->recv_next(ctx, conn, 1);
        if (msg == ((void*)0)) {
            return NC_OK;
        }

        status = msg_recv_chain(ctx, conn, msg);
        if (status != NC_OK) {
            return status;
        }
    } while (conn->recv_ready);

    return NC_OK;
}
