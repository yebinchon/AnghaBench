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
struct msg {int dummy; } ;
struct context {int dummy; } ;
struct conn {int recv_ready; struct msg* (* recv_next ) (struct context*,struct conn*,int) ;int /*<<< orphan*/  recv_active; } ;
typedef  scalar_t__ rstatus_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ NC_OK ; 
 scalar_t__ FUNC1 (struct context*,struct conn*,struct msg*) ; 
 struct msg* FUNC2 (struct context*,struct conn*,int) ; 

rstatus_t
FUNC3(struct context *ctx, struct conn *conn)
{
    rstatus_t status;
    struct msg *msg;

    FUNC0(conn->recv_active);

    conn->recv_ready = 1;
    do {
        msg = conn->recv_next(ctx, conn, true);
        if (msg == NULL) {
            return NC_OK;
        }

        status = FUNC1(ctx, conn, msg);
        if (status != NC_OK) {
            return status;
        }
    } while (conn->recv_ready);

    return NC_OK;
}