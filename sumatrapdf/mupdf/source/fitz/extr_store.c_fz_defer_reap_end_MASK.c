#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* store; } ;
typedef  TYPE_2__ fz_context ;
struct TYPE_7__ {scalar_t__ defer_reap_count; scalar_t__ needs_reaping; } ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_LOCK_ALLOC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 

void FUNC3(fz_context *ctx)
{
	int reap;

	if (ctx->store == NULL)
		return;

	FUNC1(ctx, FZ_LOCK_ALLOC);
	--ctx->store->defer_reap_count;
	reap = ctx->store->defer_reap_count == 0 && ctx->store->needs_reaping;
	if (reap)
		FUNC0(ctx); /* Drops FZ_LOCK_ALLOC */
	else
		FUNC2(ctx, FZ_LOCK_ALLOC);
}