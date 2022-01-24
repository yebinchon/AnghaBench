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
struct context {int /*<<< orphan*/  stats; int /*<<< orphan*/  timeout; int /*<<< orphan*/  evb; } ;
typedef  int rstatus_t ;

/* Variables and functions */
 int NC_OK ; 
 int /*<<< orphan*/  FUNC0 (struct context*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

rstatus_t
FUNC3(struct context *ctx)
{
    int nsd;

    nsd = FUNC1(ctx->evb, ctx->timeout);
    if (nsd < 0) {
        return nsd;
    }

    FUNC0(ctx);

    FUNC2(ctx->stats);

    return NC_OK;
}