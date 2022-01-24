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
struct context {int dummy; } ;
struct conn {int sd; int /*<<< orphan*/  (* unref ) (struct conn*) ;int /*<<< orphan*/  omsg_q; int /*<<< orphan*/  imsg_q; int /*<<< orphan*/ * smsg; int /*<<< orphan*/ * rmsg; scalar_t__ proxy; int /*<<< orphan*/  client; } ;
typedef  scalar_t__ rstatus_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct conn*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct conn*) ; 
 int /*<<< orphan*/  FUNC7 (struct conn*) ; 

void
FUNC8(struct context *ctx, struct conn *conn)
{
    rstatus_t status;

    FUNC0(!conn->client && conn->proxy);

    if (conn->sd < 0) {
        conn->unref(conn);
        FUNC3(conn);
        return;
    }

    FUNC0(conn->rmsg == NULL);
    FUNC0(conn->smsg == NULL);
    FUNC0(FUNC1(&conn->imsg_q));
    FUNC0(FUNC1(&conn->omsg_q));

    conn->unref(conn);

    status = FUNC2(conn->sd);
    if (status < 0) {
        FUNC4("close p %d failed, ignored: %s", conn->sd, FUNC5(errno));
    }
    conn->sd = -1;

    FUNC3(conn);
}