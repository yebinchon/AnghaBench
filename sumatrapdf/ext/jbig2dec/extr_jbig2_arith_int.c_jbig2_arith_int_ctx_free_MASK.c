#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  allocator; } ;
typedef  TYPE_1__ Jbig2Ctx ;
typedef  int /*<<< orphan*/  Jbig2ArithIntCtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC1(Jbig2Ctx *ctx, Jbig2ArithIntCtx *iax)
{
    FUNC0(ctx->allocator, iax);
}