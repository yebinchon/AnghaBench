
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg {int dummy; } ;
struct context {int dummy; } ;
struct conn {int send_ready; struct msg* (* send_next ) (struct context*,struct conn*) ;int send_active; } ;
typedef scalar_t__ rstatus_t ;


 int ASSERT (int ) ;
 scalar_t__ NC_OK ;
 scalar_t__ msg_send_chain (struct context*,struct conn*,struct msg*) ;
 struct msg* stub1 (struct context*,struct conn*) ;

rstatus_t
msg_send(struct context *ctx, struct conn *conn)
{
    rstatus_t status;
    struct msg *msg;

    ASSERT(conn->send_active);

    conn->send_ready = 1;
    do {
        msg = conn->send_next(ctx, conn);
        if (msg == ((void*)0)) {

            return NC_OK;
        }

        status = msg_send_chain(ctx, conn, msg);
        if (status != NC_OK) {
            return status;
        }

    } while (conn->send_ready);

    return NC_OK;
}
