
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg {scalar_t__ pos; scalar_t__ mlen; int mhdr; int request; int owner; } ;
struct mbuf {scalar_t__ last; scalar_t__ pos; } ;
struct context {int dummy; } ;
struct conn {int (* recv_done ) (struct context*,struct conn*,struct msg*,struct msg*) ;int redis; } ;
typedef int rstatus_t ;


 int NC_ENOMEM ;
 int NC_OK ;
 struct mbuf* STAILQ_LAST (int *,struct mbuf*,int ) ;
 int mbuf_insert (int *,struct mbuf*) ;
 scalar_t__ mbuf_length (struct mbuf*) ;
 int mbuf_put (struct mbuf*) ;
 struct mbuf* mbuf_split (int *,scalar_t__,int *,int *) ;
 struct msg* msg_get (int ,int ,int ) ;
 int next ;
 int stub1 (struct context*,struct conn*,struct msg*,struct msg*) ;
 int stub2 (struct context*,struct conn*,struct msg*,struct msg*) ;

__attribute__((used)) static rstatus_t
msg_parsed(struct context *ctx, struct conn *conn, struct msg *msg)
{
    struct msg *nmsg;
    struct mbuf *mbuf, *nbuf;

    mbuf = STAILQ_LAST(&msg->mhdr, mbuf, next);
    if (msg->pos == mbuf->last) {

        conn->recv_done(ctx, conn, msg, ((void*)0));
        return NC_OK;
    }







    nbuf = mbuf_split(&msg->mhdr, msg->pos, ((void*)0), ((void*)0));
    if (nbuf == ((void*)0)) {
        return NC_ENOMEM;
    }

    nmsg = msg_get(msg->owner, msg->request, conn->redis);
    if (nmsg == ((void*)0)) {
        mbuf_put(nbuf);
        return NC_ENOMEM;
    }
    mbuf_insert(&nmsg->mhdr, nbuf);
    nmsg->pos = nbuf->pos;


    nmsg->mlen = mbuf_length(nbuf);
    msg->mlen -= nmsg->mlen;

    conn->recv_done(ctx, conn, msg, nmsg);

    return NC_OK;
}
