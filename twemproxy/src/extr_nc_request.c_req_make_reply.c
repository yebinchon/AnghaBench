
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg {int done; scalar_t__ request; struct msg* peer; } ;
struct context {int dummy; } ;
struct conn {int (* enqueue_outq ) (struct context*,struct conn*,struct msg*) ;int err; int redis; } ;
typedef int rstatus_t ;


 int NC_ENOMEM ;
 int NC_OK ;
 int errno ;
 struct msg* msg_get (struct conn*,int,int ) ;
 int stub1 (struct context*,struct conn*,struct msg*) ;

__attribute__((used)) static rstatus_t
req_make_reply(struct context *ctx, struct conn *conn, struct msg *req)
{
    struct msg *rsp;

    rsp = msg_get(conn, 0, conn->redis);
    if (rsp == ((void*)0)) {
        conn->err = errno;
        return NC_ENOMEM;
    }

    req->peer = rsp;
    rsp->peer = req;
    rsp->request = 0;

    req->done = 1;
    conn->enqueue_outq(ctx, conn, req);

    return NC_OK;
}
