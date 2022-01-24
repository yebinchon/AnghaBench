#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_36__   TYPE_2__ ;
typedef  struct TYPE_35__   TYPE_1__ ;

/* Type definitions */
struct TYPE_35__ {TYPE_2__* colorspace; } ;
typedef  TYPE_1__ fz_pixmap ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_36__ {int type; } ;
typedef  TYPE_2__ fz_colorspace ;

/* Variables and functions */
 int FZ_COLORSPACE_BGR ; 
 int FZ_COLORSPACE_CMYK ; 
 int FZ_COLORSPACE_GRAY ; 
 int FZ_COLORSPACE_RGB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  fz_default_color_params ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*,int) ; 

void
FUNC15(fz_context *ctx, fz_pixmap *src, fz_pixmap *dst, int copy_spots)
{
	fz_colorspace *ss = src->colorspace;
	fz_colorspace *ds = dst->colorspace;
	int dtype = ds ? ds->type : FZ_COLORSPACE_GRAY;
	int stype = ss ? ss->type : FZ_COLORSPACE_GRAY;

	if (!ds)
	{
		FUNC14(ctx, src, dst, copy_spots);
	}

	else if (stype == FZ_COLORSPACE_GRAY)
	{
		if (dtype == FZ_COLORSPACE_GRAY)
			FUNC7(ctx, src, dst, copy_spots);
		else if (dtype == FZ_COLORSPACE_RGB)
			FUNC8(ctx, src, dst, copy_spots);
		else if (dtype == FZ_COLORSPACE_BGR)
			FUNC8(ctx, src, dst, copy_spots);
		else if (dtype == FZ_COLORSPACE_CMYK)
			FUNC6(ctx, src, dst, copy_spots);
		else
			goto slow;
	}

	else if (stype == FZ_COLORSPACE_RGB)
	{
		if (dtype == FZ_COLORSPACE_GRAY)
			FUNC11(ctx, src, dst, copy_spots);
		else if (dtype == FZ_COLORSPACE_RGB)
			FUNC12(ctx, src, dst, copy_spots);
		else if (dtype == FZ_COLORSPACE_BGR)
			FUNC9(ctx, src, dst, copy_spots);
		else if (dtype == FZ_COLORSPACE_CMYK)
			FUNC10(ctx, src, dst, copy_spots);
		else
			goto slow;
	}

	else if (stype == FZ_COLORSPACE_BGR)
	{
		if (dtype == FZ_COLORSPACE_GRAY)
			FUNC1(ctx, src, dst, copy_spots);
		else if (dtype == FZ_COLORSPACE_RGB)
			FUNC9(ctx, src, dst, copy_spots);
		else if (dtype == FZ_COLORSPACE_BGR)
			FUNC12(ctx, src, dst, copy_spots);
		else if (dtype == FZ_COLORSPACE_CMYK)
			FUNC0(ctx, src, dst, copy_spots);
		else
			goto slow;
	}

	else if (stype == FZ_COLORSPACE_CMYK)
	{
		if (dtype == FZ_COLORSPACE_GRAY)
			FUNC4(ctx, src, dst, copy_spots);
		else if (dtype == FZ_COLORSPACE_RGB)
			FUNC5(ctx, src, dst, copy_spots);
		else if (dtype == FZ_COLORSPACE_BGR)
			FUNC2(ctx, src, dst, copy_spots);
		else if (dtype == FZ_COLORSPACE_CMYK)
			FUNC3(ctx, src, dst, copy_spots);
		else
			goto slow;
	}
	else
	{
		goto slow;
	}
	return;

slow:
	FUNC13(ctx, src, dst, NULL, fz_default_color_params, copy_spots);
}