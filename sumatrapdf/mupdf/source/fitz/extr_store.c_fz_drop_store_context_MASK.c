#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_3__* store; } ;
typedef  TYPE_1__ fz_context ;
struct TYPE_10__ {int /*<<< orphan*/  hash; int /*<<< orphan*/  refs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_3__*) ; 

void
FUNC4(fz_context *ctx)
{
	if (!ctx)
		return;
	if (FUNC1(ctx, ctx->store, &ctx->store->refs))
	{
		FUNC2(ctx);
		FUNC0(ctx, ctx->store->hash);
		FUNC3(ctx, ctx->store);
		ctx->store = NULL;
	}
}