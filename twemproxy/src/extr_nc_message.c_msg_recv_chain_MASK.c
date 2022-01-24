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
typedef  scalar_t__ uint32_t ;
struct msg {int /*<<< orphan*/  mlen; int /*<<< orphan*/  pos; int /*<<< orphan*/  mhdr; } ;
struct mbuf {scalar_t__ end; scalar_t__ last; int /*<<< orphan*/  pos; } ;
struct context {int dummy; } ;
struct conn {struct msg* (* recv_next ) (struct context*,struct conn*,int) ;} ;
typedef  scalar_t__ ssize_t ;
typedef  scalar_t__ rstatus_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ NC_EAGAIN ; 
 scalar_t__ NC_ENOMEM ; 
 scalar_t__ NC_ERROR ; 
 scalar_t__ NC_OK ; 
 struct mbuf* FUNC1 (int /*<<< orphan*/ *,struct mbuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct conn*,scalar_t__,size_t) ; 
 scalar_t__ FUNC3 (struct mbuf*) ; 
 struct mbuf* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct mbuf*) ; 
 size_t FUNC6 (struct mbuf*) ; 
 scalar_t__ FUNC7 (struct context*,struct conn*,struct msg*) ; 
 int /*<<< orphan*/  next ; 
 struct msg* FUNC8 (struct context*,struct conn*,int) ; 

__attribute__((used)) static rstatus_t
FUNC9(struct context *ctx, struct conn *conn, struct msg *msg)
{
    rstatus_t status;
    struct msg *nmsg;
    struct mbuf *mbuf;
    size_t msize;
    ssize_t n;

    mbuf = FUNC1(&msg->mhdr, mbuf, next);
    if (mbuf == NULL || FUNC3(mbuf)) {
        mbuf = FUNC4();
        if (mbuf == NULL) {
            return NC_ENOMEM;
        }
        FUNC5(&msg->mhdr, mbuf);
        msg->pos = mbuf->pos;
    }
    FUNC0(mbuf->end - mbuf->last > 0);

    msize = FUNC6(mbuf);

    n = FUNC2(conn, mbuf->last, msize);
    if (n < 0) {
        if (n == NC_EAGAIN) {
            return NC_OK;
        }
        return NC_ERROR;
    }

    FUNC0((mbuf->last + n) <= mbuf->end);
    mbuf->last += n;
    msg->mlen += (uint32_t)n;

    for (;;) {
        status = FUNC7(ctx, conn, msg);
        if (status != NC_OK) {
            return status;
        }

        /* get next message to parse */
        nmsg = conn->recv_next(ctx, conn, false);
        if (nmsg == NULL || nmsg == msg) {
            /* no more data to parse */
            break;
        }

        msg = nmsg;
    }

    return NC_OK;
}