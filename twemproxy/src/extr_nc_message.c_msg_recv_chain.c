
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct msg {int mlen; int pos; int mhdr; } ;
struct mbuf {scalar_t__ end; scalar_t__ last; int pos; } ;
struct context {int dummy; } ;
struct conn {struct msg* (* recv_next ) (struct context*,struct conn*,int) ;} ;
typedef scalar_t__ ssize_t ;
typedef scalar_t__ rstatus_t ;


 int ASSERT (int) ;
 scalar_t__ NC_EAGAIN ;
 scalar_t__ NC_ENOMEM ;
 scalar_t__ NC_ERROR ;
 scalar_t__ NC_OK ;
 struct mbuf* STAILQ_LAST (int *,struct mbuf*,int ) ;
 scalar_t__ conn_recv (struct conn*,scalar_t__,size_t) ;
 scalar_t__ mbuf_full (struct mbuf*) ;
 struct mbuf* mbuf_get () ;
 int mbuf_insert (int *,struct mbuf*) ;
 size_t mbuf_size (struct mbuf*) ;
 scalar_t__ msg_parse (struct context*,struct conn*,struct msg*) ;
 int next ;
 struct msg* stub1 (struct context*,struct conn*,int) ;

__attribute__((used)) static rstatus_t
msg_recv_chain(struct context *ctx, struct conn *conn, struct msg *msg)
{
    rstatus_t status;
    struct msg *nmsg;
    struct mbuf *mbuf;
    size_t msize;
    ssize_t n;

    mbuf = STAILQ_LAST(&msg->mhdr, mbuf, next);
    if (mbuf == ((void*)0) || mbuf_full(mbuf)) {
        mbuf = mbuf_get();
        if (mbuf == ((void*)0)) {
            return NC_ENOMEM;
        }
        mbuf_insert(&msg->mhdr, mbuf);
        msg->pos = mbuf->pos;
    }
    ASSERT(mbuf->end - mbuf->last > 0);

    msize = mbuf_size(mbuf);

    n = conn_recv(conn, mbuf->last, msize);
    if (n < 0) {
        if (n == NC_EAGAIN) {
            return NC_OK;
        }
        return NC_ERROR;
    }

    ASSERT((mbuf->last + n) <= mbuf->end);
    mbuf->last += n;
    msg->mlen += (uint32_t)n;

    for (;;) {
        status = msg_parse(ctx, conn, msg);
        if (status != NC_OK) {
            return status;
        }


        nmsg = conn->recv_next(ctx, conn, 0);
        if (nmsg == ((void*)0) || nmsg == msg) {

            break;
        }

        msg = nmsg;
    }

    return NC_OK;
}
