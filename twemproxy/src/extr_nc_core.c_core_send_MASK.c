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
struct conn {scalar_t__ (* send ) (struct context*,struct conn*) ;int /*<<< orphan*/  sd; scalar_t__ proxy; scalar_t__ client; } ;
typedef  scalar_t__ rstatus_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_INFO ; 
 scalar_t__ NC_OK ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct context*,struct conn*) ; 

__attribute__((used)) static rstatus_t
FUNC3(struct context *ctx, struct conn *conn)
{
    rstatus_t status;

    status = conn->send(ctx, conn);
    if (status != NC_OK) {
        FUNC0(LOG_INFO, "send on %c %d failed: status: %d errno: %d %s",
                  conn->client ? 'c' : (conn->proxy ? 'p' : 's'), conn->sd,
                  status, errno, FUNC1(errno));
    }

    return status;
}