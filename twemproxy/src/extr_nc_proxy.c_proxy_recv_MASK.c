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
struct conn {int recv_active; int recv_ready; int /*<<< orphan*/  client; scalar_t__ proxy; } ;
typedef  scalar_t__ rstatus_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ NC_OK ; 
 scalar_t__ FUNC1 (struct context*,struct conn*) ; 

rstatus_t
FUNC2(struct context *ctx, struct conn *conn)
{
    rstatus_t status;

    FUNC0(conn->proxy && !conn->client);
    FUNC0(conn->recv_active);

    conn->recv_ready = 1;
    do {
        status = FUNC1(ctx, conn);
        if (status != NC_OK) {
            return status;
        }
    } while (conn->recv_ready);

    return NC_OK;
}