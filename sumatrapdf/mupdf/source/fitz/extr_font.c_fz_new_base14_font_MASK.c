#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  fz_font ;
struct TYPE_13__ {TYPE_2__* font; } ;
typedef  TYPE_3__ fz_context ;
struct TYPE_11__ {int is_serif; } ;
struct TYPE_14__ {TYPE_1__ flags; } ;
struct TYPE_12__ {TYPE_5__** base14; } ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_3__*,TYPE_5__*) ; 
 unsigned char* FUNC2 (TYPE_3__*,char const*,int*) ; 
 TYPE_5__* FUNC3 (TYPE_3__*,char const*,unsigned char const*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,char*,char const*) ; 

fz_font *
FUNC5(fz_context *ctx, const char *name)
{
	const unsigned char *data;
	int size;
	int x = FUNC0(name);
	if (x >= 0)
	{
		if (ctx->font->base14[x])
			return FUNC1(ctx, ctx->font->base14[x]);
		data = FUNC2(ctx, name, &size);
		if (data)
		{
			ctx->font->base14[x] = FUNC3(ctx, name, data, size, 0, 1);
			ctx->font->base14[x]->flags.is_serif = (name[0] == 'T'); /* Times-Roman */
			return FUNC1(ctx, ctx->font->base14[x]);
		}
	}
	FUNC4(ctx, FZ_ERROR_GENERIC, "cannot find builtin font with name '%s'", name);
}