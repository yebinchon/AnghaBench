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
struct msg {int request; int /*<<< orphan*/  mlen; } ;
struct context {int dummy; } ;
struct conn {int /*<<< orphan*/  owner; int /*<<< orphan*/  omsg_q; int /*<<< orphan*/  proxy; int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  out_queue ; 
 int /*<<< orphan*/  out_queue_bytes ; 
 int /*<<< orphan*/  s_tqe ; 
 int /*<<< orphan*/  FUNC2 (struct context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC4(struct context *ctx, struct conn *conn, struct msg *msg)
{
    FUNC0(msg->request);
    FUNC0(!conn->client && !conn->proxy);

    FUNC1(&conn->omsg_q, msg, s_tqe);

    FUNC2(ctx, conn->owner, out_queue);
    FUNC3(ctx, conn->owner, out_queue_bytes, msg->mlen);
}