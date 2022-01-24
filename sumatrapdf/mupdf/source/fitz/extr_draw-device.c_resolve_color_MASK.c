#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int n; int alpha; int s; int /*<<< orphan*/ * colorspace; int /*<<< orphan*/  seps; } ;
typedef  TYPE_1__ fz_pixmap ;
typedef  int /*<<< orphan*/  fz_overprint ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_colorspace ;
struct TYPE_10__ {int opm; scalar_t__ op; } ;
typedef  TYPE_2__ fz_color_params ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int FZ_MAX_COLORS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,float const*,int /*<<< orphan*/ *,float*,int /*<<< orphan*/ *,TYPE_2__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,float const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,float*,TYPE_2__) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static fz_overprint *
FUNC10(fz_context *ctx,
	fz_overprint *op,
	const float *color,
	fz_colorspace *colorspace,
	float alpha,
	fz_color_params color_params,
	unsigned char *colorbv,
	fz_pixmap *dest)
{
	float colorfv[FZ_MAX_COLORS];
	int i;
	int n = dest->n - dest->alpha;
	fz_colorspace *model = dest->colorspace;
	int devn, devgray;
	int effective_opm;

	if (colorspace == NULL && model != NULL)
		FUNC8(ctx, FZ_ERROR_GENERIC, "color destination requires source color");

	effective_opm = color_params.opm;
	devn = FUNC2(ctx, colorspace);
	devgray = FUNC1(ctx, colorspace);

	/* We can only overprint when enabled, and when we are in a subtractive colorspace */
	if (color_params.op == 0 || !FUNC3(ctx, dest->colorspace))
		op = NULL;

	/* Device Gray is additive, but seems to still be counted for overprint
	 * (see Ghent_V3.0/030_Gray_K_black_OP_x1a.pdf 030.pdf). */
	else if (devgray)
	{
	}

	/* If we are in a CMYK space (i.e. not a devn one, given we know we are subtractive at this point),
	 * then we only adhere to overprint mode if it's the same space as the destination. */
	/* FIXME: Possibly we need a better equivalency test here. */
	else if (!devn && colorspace != dest->colorspace)
	{
		effective_opm = 0;
	}

	if (n == 0)
		i = 0;
	else if (devn && FUNC0(ctx, colorspace, dest))
	{
		FUNC5(ctx, colorspace, color, dest->seps, dest->colorspace, colorfv, color_params);
		for (i = 0; i < n; i++)
			colorbv[i] = colorfv[i] * 255;
		op = FUNC9(ctx, op, dest, colorspace, effective_opm);
	}
	else
	{
		int c = n - dest->s;
		FUNC4(ctx, colorspace, color, dest->colorspace, colorfv, NULL, color_params);
		for (i = 0; i < c; i++)
			colorbv[i] = colorfv[i] * 255;
		for (; i < n; i++)
		{
			colorfv[i] = 0;
			colorbv[i] = 0;
		}
	}
	colorbv[i] = alpha * 255;

	/* op && !devn => overprinting in cmyk or devicegray. */
	if (op && !devn)
	{
		/* We are overprinting, so protect all spots. */
		for (i = 4; i < n; i++)
			FUNC7(op, i);
		/* If OPM, then protect all components for which the color values are zero.
		 * (but only if we're in devicecmyk). */
		if (effective_opm == 1 && colorspace != FUNC6(ctx))
			for (i = 0; i < n; i++)
				if (colorfv[i] == 0)
					FUNC7(op, i);
	}

	return op;
}