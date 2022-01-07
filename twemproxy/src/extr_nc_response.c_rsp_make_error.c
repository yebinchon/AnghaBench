
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct msg {scalar_t__ frag_id; scalar_t__ err; struct msg* peer; scalar_t__ request; struct conn* owner; } ;
struct context {int dummy; } ;
struct conn {int redis; int (* dequeue_outq ) (struct context*,struct conn*,struct msg*) ;int proxy; scalar_t__ client; } ;
typedef scalar_t__ err_t ;


 int ASSERT (int) ;
 struct msg* TAILQ_NEXT (struct msg*,int ) ;
 int c_tqe ;
 struct msg* msg_get_error (int ,scalar_t__) ;
 scalar_t__ req_error (struct conn*,struct msg*) ;
 int req_put (struct msg*) ;
 int rsp_put (struct msg*) ;
 int stub1 (struct context*,struct conn*,struct msg*) ;

__attribute__((used)) static struct msg *
rsp_make_error(struct context *ctx, struct conn *conn, struct msg *msg)
{
    struct msg *pmsg;
    struct msg *cmsg, *nmsg;
    uint64_t id;
    err_t err;

    ASSERT(conn->client && !conn->proxy);
    ASSERT(msg->request && req_error(conn, msg));
    ASSERT(msg->owner == conn);

    id = msg->frag_id;
    if (id != 0) {
        for (err = 0, cmsg = TAILQ_NEXT(msg, c_tqe);
             cmsg != ((void*)0) && cmsg->frag_id == id;
             cmsg = nmsg) {
            nmsg = TAILQ_NEXT(cmsg, c_tqe);


            conn->dequeue_outq(ctx, conn, cmsg);
            if (err == 0 && cmsg->err != 0) {
                err = cmsg->err;
            }

            req_put(cmsg);
        }
    } else {
        err = msg->err;
    }

    pmsg = msg->peer;
    if (pmsg != ((void*)0)) {
        ASSERT(!pmsg->request && pmsg->peer == msg);
        msg->peer = ((void*)0);
        pmsg->peer = ((void*)0);
        rsp_put(pmsg);
    }

    return msg_get_error(conn->redis, err);
}
