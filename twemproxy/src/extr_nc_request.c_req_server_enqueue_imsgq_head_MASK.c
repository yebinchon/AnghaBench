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
struct msg {int request; int /*<<< orphan*/  mlen; int /*<<< orphan*/  noreply; } ;
struct context {int dummy; } ;
struct conn {int /*<<< orphan*/  owner; int /*<<< orphan*/  imsg_q; int /*<<< orphan*/  proxy; int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  in_queue ; 
 int /*<<< orphan*/  in_queue_bytes ; 
 int /*<<< orphan*/  FUNC2 (struct msg*,struct conn*) ; 
 int /*<<< orphan*/  s_tqe ; 
 int /*<<< orphan*/  FUNC3 (struct context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC5(struct context *ctx, struct conn *conn, struct msg *msg)
{
    FUNC0(msg->request);
    FUNC0(!conn->client && !conn->proxy);

    /*
     * timeout clock starts ticking the instant the message is enqueued into
     * the server in_q; the clock continues to tick until it either expires
     * or the message is dequeued from the server out_q
     *
     * noreply request are free from timeouts because client is not intrested
     * in the response anyway!
     */
    if (!msg->noreply) {
        FUNC2(msg, conn);
    }

    FUNC1(&conn->imsg_q, msg, s_tqe);

    FUNC3(ctx, conn->owner, in_queue);
    FUNC4(ctx, conn->owner, in_queue_bytes, msg->mlen);
}