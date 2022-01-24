#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  user; TYPE_3__* (* malloc ) (int /*<<< orphan*/ ,int) ;} ;
struct TYPE_19__ {scalar_t__ lock; scalar_t__ unlock; } ;
struct TYPE_20__ {TYPE_1__ alloc; TYPE_2__ locks; } ;
typedef  TYPE_3__ fz_context ;
struct TYPE_21__ {scalar_t__ lock; scalar_t__ unlock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 TYPE_7__ fz_locks_default ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,TYPE_3__*,int) ; 
 TYPE_3__* FUNC9 (int /*<<< orphan*/ ,int) ; 

fz_context *
FUNC10(fz_context *ctx)
{
	fz_context *new_ctx;

	/* We cannot safely clone the context without having locking/
	 * unlocking functions. */
	if (ctx == NULL || (ctx->locks.lock == fz_locks_default.lock && ctx->locks.unlock == fz_locks_default.unlock))
		return NULL;

	new_ctx = ctx->alloc.malloc(ctx->alloc.user, sizeof(fz_context));
	if (!new_ctx)
		return NULL;

	/* First copy old context, including pointers to shared contexts */
	FUNC8(new_ctx, ctx, sizeof (fz_context));

	/* Reset error context to initial state. */
	FUNC0(new_ctx);

	/* Then keep lock checking happy by keeping shared contexts with new context */
	FUNC2(new_ctx);
	FUNC6(new_ctx);
	FUNC7(new_ctx);
	FUNC3(new_ctx);
	FUNC1(new_ctx);
	FUNC5(new_ctx);
	FUNC4(new_ctx);

	return new_ctx;
}