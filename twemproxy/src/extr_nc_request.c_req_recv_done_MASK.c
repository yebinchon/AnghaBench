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
struct server_pool {int /*<<< orphan*/  ncontinuum; } ;
struct msg_tqh {int dummy; } ;
struct msg {int request; scalar_t__ (* reply ) (struct msg*) ;scalar_t__ (* fragment ) (struct msg*,int /*<<< orphan*/ ,struct msg_tqh*) ;int /*<<< orphan*/  noreply; scalar_t__ noforward; struct conn* owner; } ;
struct context {int /*<<< orphan*/  evb; } ;
struct conn {int /*<<< orphan*/  (* enqueue_outq ) (struct context*,struct conn*,struct msg*) ;struct server_pool* owner; void* err; struct msg* rmsg; int /*<<< orphan*/  proxy; scalar_t__ client; } ;
typedef  scalar_t__ rstatus_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ NC_OK ; 
 int FUNC1 (struct msg_tqh*) ; 
 struct msg* FUNC2 (struct msg_tqh*) ; 
 int /*<<< orphan*/  FUNC3 (struct msg_tqh*) ; 
 struct msg* FUNC4 (struct msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct msg_tqh*,struct msg*,int /*<<< orphan*/ ) ; 
 void* errno ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,struct conn*) ; 
 int /*<<< orphan*/  m_tqe ; 
 scalar_t__ FUNC7 (struct context*,struct conn*,struct msg*) ; 
 int /*<<< orphan*/  FUNC8 (struct context*,struct conn*,struct msg*) ; 
 int /*<<< orphan*/  FUNC9 (struct context*,struct conn*,struct msg*) ; 
 scalar_t__ FUNC10 (struct context*,struct conn*,struct msg*) ; 
 scalar_t__ FUNC11 (struct msg*) ; 
 scalar_t__ FUNC12 (struct msg*,int /*<<< orphan*/ ,struct msg_tqh*) ; 
 int /*<<< orphan*/  FUNC13 (struct context*,struct conn*,struct msg*) ; 
 int /*<<< orphan*/  FUNC14 (struct context*,struct conn*,struct msg*) ; 

void
FUNC15(struct context *ctx, struct conn *conn, struct msg *msg,
              struct msg *nmsg)
{
    rstatus_t status;
    struct server_pool *pool;
    struct msg_tqh frag_msgq;
    struct msg *sub_msg;
    struct msg *tmsg; 			/* tmp next message */

    FUNC0(conn->client && !conn->proxy);
    FUNC0(msg->request);
    FUNC0(msg->owner == conn);
    FUNC0(conn->rmsg == msg);
    FUNC0(nmsg == NULL || nmsg->request);

    /* enqueue next message (request), if any */
    conn->rmsg = nmsg;

    if (FUNC7(ctx, conn, msg)) {
        return;
    }

    if (msg->noforward) {
        status = FUNC10(ctx, conn, msg);
        if (status != NC_OK) {
            conn->err = errno;
            return;
        }

        status = msg->reply(msg);
        if (status != NC_OK) {
            conn->err = errno;
            return;
        }

        status = FUNC6(ctx->evb, conn);
        if (status != NC_OK) {
            conn->err = errno;
        }

        return;
    }

    /* do fragment */
    pool = conn->owner;
    FUNC3(&frag_msgq);
    status = msg->fragment(msg, pool->ncontinuum, &frag_msgq);
    if (status != NC_OK) {
        if (!msg->noreply) {
            conn->enqueue_outq(ctx, conn, msg);
        }
        FUNC9(ctx, conn, msg);
    }

    /* if no fragment happened */
    if (FUNC1(&frag_msgq)) {
        FUNC8(ctx, conn, msg);
        return;
    }

    status = FUNC10(ctx, conn, msg);
    if (status != NC_OK) {
        if (!msg->noreply) {
            conn->enqueue_outq(ctx, conn, msg);
        }
        FUNC9(ctx, conn, msg);
    }

    for (sub_msg = FUNC2(&frag_msgq); sub_msg != NULL; sub_msg = tmsg) {
        tmsg = FUNC4(sub_msg, m_tqe);

        FUNC5(&frag_msgq, sub_msg, m_tqe);
        FUNC8(ctx, conn, sub_msg);
    }

    FUNC0(FUNC1(&frag_msgq));
    return;
}