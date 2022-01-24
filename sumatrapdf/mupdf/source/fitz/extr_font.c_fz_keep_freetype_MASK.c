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
struct TYPE_8__ {int /*<<< orphan*/  ftlib_refs; scalar_t__ ftlib; int /*<<< orphan*/  ftmemory; } ;
typedef  TYPE_1__ fz_font_context ;
struct TYPE_9__ {TYPE_1__* font; } ;
typedef  TYPE_2__ fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int*,int*,int*) ; 
 int FUNC3 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int /*<<< orphan*/  FZ_LOCK_FREETYPE ; 
 char* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,char*,char*) ; 

__attribute__((used)) static void
FUNC9(fz_context *ctx)
{
	int fterr;
	int maj, min, pat;
	fz_font_context *fct = ctx->font;

	FUNC5(ctx, FZ_LOCK_FREETYPE);
	if (fct->ftlib)
	{
		fct->ftlib_refs++;
		FUNC7(ctx, FZ_LOCK_FREETYPE);
		return;
	}

	fterr = FUNC3(&fct->ftmemory, &fct->ftlib);
	if (fterr)
	{
		const char *mess = FUNC4(fterr);
		FUNC7(ctx, FZ_LOCK_FREETYPE);
		FUNC6(ctx, FZ_ERROR_GENERIC, "cannot init freetype: %s", mess);
	}

	FUNC0(fct->ftlib);

	FUNC2(fct->ftlib, &maj, &min, &pat);
	if (maj == 2 && min == 1 && pat < 7)
	{
		fterr = FUNC1(fct->ftlib);
		if (fterr)
			FUNC8(ctx, "FT_Done_Library(): %s", FUNC4(fterr));
		FUNC7(ctx, FZ_LOCK_FREETYPE);
		FUNC6(ctx, FZ_ERROR_GENERIC, "freetype version too old: %d.%d.%d", maj, min, pat);
	}

	fct->ftlib_refs++;
	FUNC7(ctx, FZ_LOCK_FREETYPE);
}