
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg_tqh {int dummy; } ;
struct msg {scalar_t__ mlen; int mhdr; } ;
struct mbuf {scalar_t__ pos; scalar_t__ last; } ;
struct iovec {scalar_t__ iov_base; size_t iov_len; } ;
struct context {int dummy; } ;
struct conn {int (* send_done ) (struct context*,struct conn*,struct msg*) ;struct msg* smsg; struct msg* (* send_next ) (struct context*,struct conn*) ;} ;
struct array {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef int rstatus_t ;
typedef int iov ;


 int ASSERT (int) ;
 scalar_t__ NC_EAGAIN ;
 int NC_ERROR ;
 int NC_IOV_MAX ;
 int NC_OK ;
 size_t SSIZE_MAX ;
 struct mbuf* STAILQ_FIRST (int *) ;
 struct mbuf* STAILQ_NEXT (struct mbuf*,int ) ;
 int TAILQ_EMPTY (struct msg_tqh*) ;
 struct msg* TAILQ_FIRST (struct msg_tqh*) ;
 int TAILQ_INIT (struct msg_tqh*) ;
 int TAILQ_INSERT_TAIL (struct msg_tqh*,struct msg*,int ) ;
 struct msg* TAILQ_NEXT (struct msg*,int ) ;
 int TAILQ_REMOVE (struct msg_tqh*,struct msg*,int ) ;
 int array_n (struct array*) ;
 struct iovec* array_push (struct array*) ;
 int array_set (struct array*,struct iovec*,int,int) ;
 scalar_t__ conn_sendv (struct conn*,struct array*,size_t) ;
 int m_tqe ;
 scalar_t__ mbuf_empty (struct mbuf*) ;
 size_t mbuf_length (struct mbuf*) ;
 int next ;
 struct msg* stub1 (struct context*,struct conn*) ;
 int stub2 (struct context*,struct conn*,struct msg*) ;
 int stub3 (struct context*,struct conn*,struct msg*) ;

__attribute__((used)) static rstatus_t
msg_send_chain(struct context *ctx, struct conn *conn, struct msg *msg)
{
    struct msg_tqh send_msgq;
    struct msg *nmsg;
    struct mbuf *mbuf, *nbuf;
    size_t mlen;
    struct iovec *ciov, iov[NC_IOV_MAX];
    struct array sendv;
    size_t nsend, nsent;
    size_t limit;
    ssize_t n;

    TAILQ_INIT(&send_msgq);

    array_set(&sendv, iov, sizeof(iov[0]), NC_IOV_MAX);



    nsend = 0;





    limit = SSIZE_MAX;

    for (;;) {
        ASSERT(conn->smsg == msg);

        TAILQ_INSERT_TAIL(&send_msgq, msg, m_tqe);

        for (mbuf = STAILQ_FIRST(&msg->mhdr);
             mbuf != ((void*)0) && array_n(&sendv) < NC_IOV_MAX && nsend < limit;
             mbuf = nbuf) {
            nbuf = STAILQ_NEXT(mbuf, next);

            if (mbuf_empty(mbuf)) {
                continue;
            }

            mlen = mbuf_length(mbuf);
            if ((nsend + mlen) > limit) {
                mlen = limit - nsend;
            }

            ciov = array_push(&sendv);
            ciov->iov_base = mbuf->pos;
            ciov->iov_len = mlen;

            nsend += mlen;
        }

        if (array_n(&sendv) >= NC_IOV_MAX || nsend >= limit) {
            break;
        }

        msg = conn->send_next(ctx, conn);
        if (msg == ((void*)0)) {
            break;
        }
    }





    conn->smsg = ((void*)0);
    if (!TAILQ_EMPTY(&send_msgq) && nsend != 0) {
        n = conn_sendv(conn, &sendv, nsend);
    } else {
        n = 0;
    }

    nsent = n > 0 ? (size_t)n : 0;



    for (msg = TAILQ_FIRST(&send_msgq); msg != ((void*)0); msg = nmsg) {
        nmsg = TAILQ_NEXT(msg, m_tqe);

        TAILQ_REMOVE(&send_msgq, msg, m_tqe);

        if (nsent == 0) {
            if (msg->mlen == 0) {
                conn->send_done(ctx, conn, msg);
            }
            continue;
        }


        for (mbuf = STAILQ_FIRST(&msg->mhdr); mbuf != ((void*)0); mbuf = nbuf) {
            nbuf = STAILQ_NEXT(mbuf, next);

            if (mbuf_empty(mbuf)) {
                continue;
            }

            mlen = mbuf_length(mbuf);
            if (nsent < mlen) {

                mbuf->pos += nsent;
                ASSERT(mbuf->pos < mbuf->last);
                nsent = 0;
                break;
            }


            mbuf->pos = mbuf->last;
            nsent -= mlen;
        }


        if (mbuf == ((void*)0)) {
            conn->send_done(ctx, conn, msg);
        }
    }

    ASSERT(TAILQ_EMPTY(&send_msgq));

    if (n >= 0) {
        return NC_OK;
    }

    return (n == NC_EAGAIN) ? NC_OK : NC_ERROR;
}
