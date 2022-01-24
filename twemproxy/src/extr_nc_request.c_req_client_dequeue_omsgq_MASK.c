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
struct msg {int request; } ;
struct context {int dummy; } ;
struct conn {int /*<<< orphan*/  omsg_q; int /*<<< orphan*/  proxy; scalar_t__ client; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  c_tqe ; 

void
FUNC2(struct context *ctx, struct conn *conn, struct msg *msg)
{
    FUNC0(msg->request);
    FUNC0(conn->client && !conn->proxy);

    FUNC1(&conn->omsg_q, msg, c_tqe);
}