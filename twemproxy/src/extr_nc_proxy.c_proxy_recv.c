
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct context {int dummy; } ;
struct conn {int recv_active; int recv_ready; int client; scalar_t__ proxy; } ;
typedef scalar_t__ rstatus_t ;


 int ASSERT (int) ;
 scalar_t__ NC_OK ;
 scalar_t__ proxy_accept (struct context*,struct conn*) ;

rstatus_t
proxy_recv(struct context *ctx, struct conn *conn)
{
    rstatus_t status;

    ASSERT(conn->proxy && !conn->client);
    ASSERT(conn->recv_active);

    conn->recv_ready = 1;
    do {
        status = proxy_accept(ctx, conn);
        if (status != NC_OK) {
            return status;
        }
    } while (conn->recv_ready);

    return NC_OK;
}
