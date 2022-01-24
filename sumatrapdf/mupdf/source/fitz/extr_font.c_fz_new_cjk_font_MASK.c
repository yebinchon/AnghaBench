#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  fz_font ;
struct TYPE_9__ {TYPE_1__* font; } ;
typedef  TYPE_2__ fz_context ;
struct TYPE_8__ {int /*<<< orphan*/ * cjk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 unsigned char* FUNC1 (TYPE_2__*,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,unsigned char const*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

fz_font *
FUNC5(fz_context *ctx, int ordering)
{
	const unsigned char *data;
	int size, index;
	if (ordering >= 0 && ordering < (int)FUNC4(ctx->font->cjk))
	{
		if (ctx->font->cjk[ordering])
			return FUNC0(ctx, ctx->font->cjk[ordering]);
		data = FUNC1(ctx, ordering, &size, &index);
		if (data)
		{
			ctx->font->cjk[ordering] = FUNC2(ctx, NULL, data, size, index, 0);
			return FUNC0(ctx, ctx->font->cjk[ordering]);
		}
	}
	FUNC3(ctx, FZ_ERROR_GENERIC, "cannot find builtin CJK font");
}