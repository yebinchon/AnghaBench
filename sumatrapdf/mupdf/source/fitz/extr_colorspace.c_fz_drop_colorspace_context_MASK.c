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
struct TYPE_9__ {TYPE_3__* colorspace; } ;
typedef  TYPE_1__ fz_context ;
struct TYPE_10__ {int /*<<< orphan*/  lab; int /*<<< orphan*/  cmyk; int /*<<< orphan*/  bgr; int /*<<< orphan*/  rgb; int /*<<< orphan*/  gray; int /*<<< orphan*/  ctx_refs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_3__*) ; 

void FUNC4(fz_context *ctx)
{
	if (FUNC2(ctx, ctx->colorspace, &ctx->colorspace->ctx_refs))
	{
		FUNC0(ctx, ctx->colorspace->gray);
		FUNC0(ctx, ctx->colorspace->rgb);
		FUNC0(ctx, ctx->colorspace->bgr);
		FUNC0(ctx, ctx->colorspace->cmyk);
		FUNC0(ctx, ctx->colorspace->lab);
#if FZ_ENABLE_ICC
		fz_drop_icc_context(ctx);
#endif
		FUNC3(ctx, ctx->colorspace);
		ctx->colorspace = NULL;
	}
}