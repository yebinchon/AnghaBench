
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg {int result; int (* parser ) (struct msg*) ;} ;
struct context {int dummy; } ;
struct conn {scalar_t__ err; int (* recv_done ) (struct context*,struct conn*,struct msg*,int *) ;} ;
typedef int rstatus_t ;





 int NC_ERROR ;
 int NC_OK ;
 scalar_t__ errno ;
 scalar_t__ msg_empty (struct msg*) ;
 int msg_parsed (struct context*,struct conn*,struct msg*) ;
 int msg_repair (struct context*,struct conn*,struct msg*) ;
 int stub1 (struct context*,struct conn*,struct msg*,int *) ;
 int stub2 (struct msg*) ;

__attribute__((used)) static rstatus_t
msg_parse(struct context *ctx, struct conn *conn, struct msg *msg)
{
    rstatus_t status;

    if (msg_empty(msg)) {

        conn->recv_done(ctx, conn, msg, ((void*)0));
        return NC_OK;
    }

    msg->parser(msg);

    switch (msg->result) {
    case 129:
        status = msg_parsed(ctx, conn, msg);
        break;

    case 128:
        status = msg_repair(ctx, conn, msg);
        break;

    case 130:
        status = NC_OK;
        break;

    default:
        status = NC_ERROR;
        conn->err = errno;
        break;
    }

    return conn->err != 0 ? NC_ERROR : status;
}
