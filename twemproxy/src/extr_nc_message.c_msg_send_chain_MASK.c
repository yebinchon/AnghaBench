#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct msg_tqh {int dummy; } ;
struct msg {scalar_t__ mlen; int /*<<< orphan*/  mhdr; } ;
struct mbuf {scalar_t__ pos; scalar_t__ last; } ;
struct iovec {scalar_t__ iov_base; size_t iov_len; } ;
struct context {int dummy; } ;
struct conn {int /*<<< orphan*/  (* send_done ) (struct context*,struct conn*,struct msg*) ;struct msg* smsg; struct msg* (* send_next ) (struct context*,struct conn*) ;} ;
struct array {int dummy; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  rstatus_t ;
typedef  int /*<<< orphan*/  iov ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ NC_EAGAIN ; 
 int /*<<< orphan*/  NC_ERROR ; 
 int NC_IOV_MAX ; 
 int /*<<< orphan*/  NC_OK ; 
 size_t SSIZE_MAX ; 
 struct mbuf* FUNC1 (int /*<<< orphan*/ *) ; 
 struct mbuf* FUNC2 (struct mbuf*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct msg_tqh*) ; 
 struct msg* FUNC4 (struct msg_tqh*) ; 
 int /*<<< orphan*/  FUNC5 (struct msg_tqh*) ; 
 int /*<<< orphan*/  FUNC6 (struct msg_tqh*,struct msg*,int /*<<< orphan*/ ) ; 
 struct msg* FUNC7 (struct msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct msg_tqh*,struct msg*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct array*) ; 
 struct iovec* FUNC10 (struct array*) ; 
 int /*<<< orphan*/  FUNC11 (struct array*,struct iovec*,int,int) ; 
 scalar_t__ FUNC12 (struct conn*,struct array*,size_t) ; 
 int /*<<< orphan*/  m_tqe ; 
 scalar_t__ FUNC13 (struct mbuf*) ; 
 size_t FUNC14 (struct mbuf*) ; 
 int /*<<< orphan*/  next ; 
 struct msg* FUNC15 (struct context*,struct conn*) ; 
 int /*<<< orphan*/  FUNC16 (struct context*,struct conn*,struct msg*) ; 
 int /*<<< orphan*/  FUNC17 (struct context*,struct conn*,struct msg*) ; 

__attribute__((used)) static rstatus_t
FUNC18(struct context *ctx, struct conn *conn, struct msg *msg)
{
    struct msg_tqh send_msgq;            /* send msg q */
    struct msg *nmsg;                    /* next msg */
    struct mbuf *mbuf, *nbuf;            /* current and next mbuf */
    size_t mlen;                         /* current mbuf data length */
    struct iovec *ciov, iov[NC_IOV_MAX]; /* current iovec */
    struct array sendv;                  /* send iovec */
    size_t nsend, nsent;                 /* bytes to send; bytes sent */
    size_t limit;                        /* bytes to send limit */
    ssize_t n;                           /* bytes sent by sendv */

    FUNC5(&send_msgq);

    FUNC11(&sendv, iov, sizeof(iov[0]), NC_IOV_MAX);

    /* preprocess - build iovec */

    nsend = 0;
    /*
     * readv() and writev() returns EINVAL if the sum of the iov_len values
     * overflows an ssize_t value Or, the vector count iovcnt is less than
     * zero or greater than the permitted maximum.
     */
    limit = SSIZE_MAX;

    for (;;) {
        FUNC0(conn->smsg == msg);

        FUNC6(&send_msgq, msg, m_tqe);

        for (mbuf = FUNC1(&msg->mhdr);
             mbuf != NULL && FUNC9(&sendv) < NC_IOV_MAX && nsend < limit;
             mbuf = nbuf) {
            nbuf = FUNC2(mbuf, next);

            if (FUNC13(mbuf)) {
                continue;
            }

            mlen = FUNC14(mbuf);
            if ((nsend + mlen) > limit) {
                mlen = limit - nsend;
            }

            ciov = FUNC10(&sendv);
            ciov->iov_base = mbuf->pos;
            ciov->iov_len = mlen;

            nsend += mlen;
        }

        if (FUNC9(&sendv) >= NC_IOV_MAX || nsend >= limit) {
            break;
        }

        msg = conn->send_next(ctx, conn);
        if (msg == NULL) {
            break;
        }
    }

    /*
     * (nsend == 0) is possible in redis multi-del
     * see PR: https://github.com/twitter/twemproxy/pull/225
     */
    conn->smsg = NULL;
    if (!FUNC3(&send_msgq) && nsend != 0) {
        n = FUNC12(conn, &sendv, nsend);
    } else {
        n = 0;
    }

    nsent = n > 0 ? (size_t)n : 0;

    /* postprocess - process sent messages in send_msgq */

    for (msg = FUNC4(&send_msgq); msg != NULL; msg = nmsg) {
        nmsg = FUNC7(msg, m_tqe);

        FUNC8(&send_msgq, msg, m_tqe);

        if (nsent == 0) {
            if (msg->mlen == 0) {
                conn->send_done(ctx, conn, msg);
            }
            continue;
        }

        /* adjust mbufs of the sent message */
        for (mbuf = FUNC1(&msg->mhdr); mbuf != NULL; mbuf = nbuf) {
            nbuf = FUNC2(mbuf, next);

            if (FUNC13(mbuf)) {
                continue;
            }

            mlen = FUNC14(mbuf);
            if (nsent < mlen) {
                /* mbuf was sent partially; process remaining bytes later */
                mbuf->pos += nsent;
                FUNC0(mbuf->pos < mbuf->last);
                nsent = 0;
                break;
            }

            /* mbuf was sent completely; mark it empty */
            mbuf->pos = mbuf->last;
            nsent -= mlen;
        }

        /* message has been sent completely, finalize it */
        if (mbuf == NULL) {
            conn->send_done(ctx, conn, msg);
        }
    }

    FUNC0(FUNC3(&send_msgq));

    if (n >= 0) {
        return NC_OK;
    }

    return (n == NC_EAGAIN) ? NC_OK : NC_ERROR;
}