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
struct TYPE_7__ {scalar_t__ ftlib_refs; int /*<<< orphan*/ * ftlib; } ;
typedef  TYPE_1__ fz_font_context ;
struct TYPE_8__ {TYPE_1__* font; } ;
typedef  TYPE_2__ fz_context ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FZ_LOCK_FREETYPE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(fz_context *ctx)
{
	int fterr;
	fz_font_context *fct = ctx->font;

	FUNC2(ctx, FZ_LOCK_FREETYPE);
	if (--fct->ftlib_refs == 0)
	{
		fterr = FUNC0(fct->ftlib);
		if (fterr)
			FUNC4(ctx, "FT_Done_Library(): %s", FUNC1(fterr));
		fct->ftlib = NULL;
	}
	FUNC3(ctx, FZ_LOCK_FREETYPE);
}