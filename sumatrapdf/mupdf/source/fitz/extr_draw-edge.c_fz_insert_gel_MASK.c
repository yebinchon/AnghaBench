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
struct TYPE_7__ {int y0; int y1; int x0; int x1; } ;
struct TYPE_8__ {TYPE_1__ clip; } ;
typedef  TYPE_2__ fz_rasterizer ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int const BBOX_MAX ; 
 int const BBOX_MIN ; 
 int ENTER ; 
 int LEAVE ; 
 int OUTSIDE ; 
 int FUNC0 (int,int,int,int,int,int,int*) ; 
 int FUNC1 (int,int,int,int,int,int,int*) ; 
 float FUNC2 (float) ; 
 scalar_t__ FUNC3 (float,int const,int const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*,int,int,int,int) ; 
 int FUNC5 (TYPE_2__*) ; 
 int FUNC6 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC7(fz_context *ctx, fz_rasterizer *ras, float fx0, float fy0, float fx1, float fy1, int rev)
{
	int x0, y0, x1, y1;
	int d, v;
	const int hscale = FUNC5(ras);
	const int vscale = FUNC6(ras);

	fx0 = FUNC2(fx0 * hscale);
	fx1 = FUNC2(fx1 * hscale);
	fy0 = FUNC2(fy0 * vscale);
	fy1 = FUNC2(fy1 * vscale);

	/* Call fz_clamp so that clamping is done in the float domain, THEN
	 * cast down to an int. Calling fz_clampi causes problems due to the
	 * implicit cast down from float to int of the first argument
	 * over/underflowing and flipping sign at extreme values. */
	x0 = (int)FUNC3(fx0, BBOX_MIN * hscale, BBOX_MAX * hscale);
	y0 = (int)FUNC3(fy0, BBOX_MIN * vscale, BBOX_MAX * vscale);
	x1 = (int)FUNC3(fx1, BBOX_MIN * hscale, BBOX_MAX * hscale);
	y1 = (int)FUNC3(fy1, BBOX_MIN * vscale, BBOX_MAX * vscale);

	d = FUNC1(ras->clip.y0, 0, x0, y0, x1, y1, &v);
	if (d == OUTSIDE) return;
	if (d == LEAVE) { y1 = ras->clip.y0; x1 = v; }
	if (d == ENTER) { y0 = ras->clip.y0; x0 = v; }

	d = FUNC1(ras->clip.y1, 1, x0, y0, x1, y1, &v);
	if (d == OUTSIDE) return;
	if (d == LEAVE) { y1 = ras->clip.y1; x1 = v; }
	if (d == ENTER) { y0 = ras->clip.y1; x0 = v; }

	d = FUNC0(ras->clip.x0, 0, x0, y0, x1, y1, &v);
	if (d == OUTSIDE) {
		x0 = x1 = ras->clip.x0;
	}
	if (d == LEAVE) {
		FUNC4(ctx, ras, ras->clip.x0, v, ras->clip.x0, y1);
		x1 = ras->clip.x0;
		y1 = v;
	}
	if (d == ENTER) {
		FUNC4(ctx, ras, ras->clip.x0, y0, ras->clip.x0, v);
		x0 = ras->clip.x0;
		y0 = v;
	}

	d = FUNC0(ras->clip.x1, 1, x0, y0, x1, y1, &v);
	if (d == OUTSIDE) {
		x0 = x1 = ras->clip.x1;
	}
	if (d == LEAVE) {
		FUNC4(ctx, ras, ras->clip.x1, v, ras->clip.x1, y1);
		x1 = ras->clip.x1;
		y1 = v;
	}
	if (d == ENTER) {
		FUNC4(ctx, ras, ras->clip.x1, y0, ras->clip.x1, v);
		x0 = ras->clip.x1;
		y0 = v;
	}

	FUNC4(ctx, ras, x0, y0, x1, y1);
}