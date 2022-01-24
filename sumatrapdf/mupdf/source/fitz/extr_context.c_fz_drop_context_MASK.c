#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  user; int /*<<< orphan*/  (* free ) (int /*<<< orphan*/ ,TYPE_3__*) ;} ;
struct TYPE_14__ {scalar_t__ top; scalar_t__ stack; } ;
struct TYPE_16__ {TYPE_2__ alloc; TYPE_1__ error; } ;
typedef  TYPE_3__ fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_3__*) ; 

void
FUNC10(fz_context *ctx)
{
	if (!ctx)
		return;

	/* Other finalisation calls go here (in reverse order) */
	FUNC2(ctx);
	FUNC4(ctx);
	FUNC5(ctx);
	FUNC6(ctx);
	FUNC7(ctx);
	FUNC1(ctx);
	FUNC3(ctx);

	FUNC8(ctx);

	FUNC0(ctx->error.top == ctx->error.stack);

	/* Free the context itself */
	ctx->alloc.free(ctx->alloc.user, ctx);
}