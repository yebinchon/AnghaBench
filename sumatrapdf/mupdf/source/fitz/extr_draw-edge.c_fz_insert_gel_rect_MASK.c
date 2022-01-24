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
struct TYPE_7__ {int const x0; int const x1; int const y0; int const y1; } ;
struct TYPE_8__ {TYPE_1__ clip; } ;
typedef  TYPE_2__ fz_rasterizer ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int const BBOX_MAX ; 
 int const BBOX_MIN ; 
 float FUNC0 (float) ; 
 float FUNC1 (float) ; 
 float FUNC2 (float,int const,int const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,int,int,int,int) ; 
 int FUNC4 (TYPE_2__*) ; 
 int FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC6(fz_context *ctx, fz_rasterizer *ras, float fx0, float fy0, float fx1, float fy1)
{
	int x0, y0, x1, y1;
	const int hscale = FUNC4(ras);
	const int vscale = FUNC5(ras);

	if (fx0 <= fx1)
	{
		fx0 = FUNC1(fx0 * hscale);
		fx1 = FUNC0(fx1 * hscale);
	}
	else
	{
		fx0 = FUNC0(fx0 * hscale);
		fx1 = FUNC1(fx1 * hscale);
	}
	if (fy0 <= fy1)
	{
		fy0 = FUNC1(fy0 * vscale);
		fy1 = FUNC0(fy1 * vscale);
	}
	else
	{
		fy0 = FUNC0(fy0 * vscale);
		fy1 = FUNC1(fy1 * vscale);
	}

	fx0 = FUNC2(fx0, ras->clip.x0, ras->clip.x1);
	fx1 = FUNC2(fx1, ras->clip.x0, ras->clip.x1);
	fy0 = FUNC2(fy0, ras->clip.y0, ras->clip.y1);
	fy1 = FUNC2(fy1, ras->clip.y0, ras->clip.y1);

	/* Call fz_clamp so that clamping is done in the float domain, THEN
	 * cast down to an int. Calling fz_clampi causes problems due to the
	 * implicit cast down from float to int of the first argument
	 * over/underflowing and flipping sign at extreme values. */
	x0 = (int)FUNC2(fx0, BBOX_MIN * hscale, BBOX_MAX * hscale);
	y0 = (int)FUNC2(fy0, BBOX_MIN * vscale, BBOX_MAX * vscale);
	x1 = (int)FUNC2(fx1, BBOX_MIN * hscale, BBOX_MAX * hscale);
	y1 = (int)FUNC2(fy1, BBOX_MIN * vscale, BBOX_MAX * vscale);

	FUNC3(ctx, ras, x1, y0, x1, y1);
	FUNC3(ctx, ras, x0, y1, x0, y0);
}