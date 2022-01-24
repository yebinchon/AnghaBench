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
struct msg {scalar_t__ pos; scalar_t__ mlen; int /*<<< orphan*/  mhdr; int /*<<< orphan*/  request; int /*<<< orphan*/  owner; } ;
struct mbuf {scalar_t__ last; scalar_t__ pos; } ;
struct context {int dummy; } ;
struct conn {int /*<<< orphan*/  (* recv_done ) (struct context*,struct conn*,struct msg*,struct msg*) ;int /*<<< orphan*/  redis; } ;
typedef  int /*<<< orphan*/  rstatus_t ;

/* Variables and functions */
 int /*<<< orphan*/  NC_ENOMEM ; 
 int /*<<< orphan*/  NC_OK ; 
 struct mbuf* FUNC0 (int /*<<< orphan*/ *,struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct mbuf*) ; 
 scalar_t__ FUNC2 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*) ; 
 struct mbuf* FUNC4 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct msg* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  FUNC6 (struct context*,struct conn*,struct msg*,struct msg*) ; 
 int /*<<< orphan*/  FUNC7 (struct context*,struct conn*,struct msg*,struct msg*) ; 

__attribute__((used)) static rstatus_t
FUNC8(struct context *ctx, struct conn *conn, struct msg *msg)
{
    struct msg *nmsg;
    struct mbuf *mbuf, *nbuf;

    mbuf = FUNC0(&msg->mhdr, mbuf, next);
    if (msg->pos == mbuf->last) {
        /* no more data to parse */
        conn->recv_done(ctx, conn, msg, NULL);
        return NC_OK;
    }

    /*
     * Input mbuf has un-parsed data. Split mbuf of the current message msg
     * into (mbuf, nbuf), where mbuf is the portion of the message that has
     * been parsed and nbuf is the portion of the message that is un-parsed.
     * Parse nbuf as a new message nmsg in the next iteration.
     */
    nbuf = FUNC4(&msg->mhdr, msg->pos, NULL, NULL);
    if (nbuf == NULL) {
        return NC_ENOMEM;
    }

    nmsg = FUNC5(msg->owner, msg->request, conn->redis);
    if (nmsg == NULL) {
        FUNC3(nbuf);
        return NC_ENOMEM;
    }
    FUNC1(&nmsg->mhdr, nbuf);
    nmsg->pos = nbuf->pos;

    /* update length of current (msg) and new message (nmsg) */
    nmsg->mlen = FUNC2(nbuf);
    msg->mlen -= nmsg->mlen;

    conn->recv_done(ctx, conn, msg, nmsg);

    return NC_OK;
}