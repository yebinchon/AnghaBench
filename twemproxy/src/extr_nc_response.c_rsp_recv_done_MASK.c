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
struct msg {int /*<<< orphan*/  request; struct conn* owner; } ;
struct context {int dummy; } ;
struct conn {struct msg* rmsg; int /*<<< orphan*/  proxy; int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct context*,struct conn*,struct msg*) ; 
 int /*<<< orphan*/  FUNC2 (struct context*,struct conn*,struct msg*) ; 

void
FUNC3(struct context *ctx, struct conn *conn, struct msg *msg,
              struct msg *nmsg)
{
    FUNC0(!conn->client && !conn->proxy);
    FUNC0(msg != NULL && conn->rmsg == msg);
    FUNC0(!msg->request);
    FUNC0(msg->owner == conn);
    FUNC0(nmsg == NULL || !nmsg->request);

    /* enqueue next message (response), if any */
    conn->rmsg = nmsg;

    if (FUNC1(ctx, conn, msg)) {
        return;
    }

    FUNC2(ctx, conn, msg);
}