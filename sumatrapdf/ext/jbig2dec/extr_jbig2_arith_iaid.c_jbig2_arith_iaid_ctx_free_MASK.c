#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {struct TYPE_7__* IAIDx; } ;
struct TYPE_6__ {int /*<<< orphan*/  allocator; } ;
typedef  TYPE_1__ Jbig2Ctx ;
typedef  TYPE_2__ Jbig2ArithIaidCtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 

void
FUNC1(Jbig2Ctx *ctx, Jbig2ArithIaidCtx *iax)
{
    if (iax != NULL) {
        FUNC0(ctx->allocator, iax->IAIDx);
        FUNC0(ctx->allocator, iax);
    }
}