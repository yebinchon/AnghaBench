#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_5__* glyph_cache; } ;
typedef  TYPE_1__ fz_context ;
struct TYPE_9__ {scalar_t__ refs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_LOCK_GLYPHCACHE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void
FUNC4(fz_context *ctx)
{
	if (!ctx || !ctx->glyph_cache)
		return;

	FUNC2(ctx, FZ_LOCK_GLYPHCACHE);
	ctx->glyph_cache->refs--;
	if (ctx->glyph_cache->refs == 0)
	{
		FUNC0(ctx);
		FUNC1(ctx, ctx->glyph_cache);
		ctx->glyph_cache = NULL;
	}
	FUNC3(ctx, FZ_LOCK_GLYPHCACHE);
}