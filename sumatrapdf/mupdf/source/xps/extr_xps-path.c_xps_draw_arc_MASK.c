#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xps_document ;
struct TYPE_7__ {float x; float y; } ;
typedef  TYPE_1__ fz_point ;
typedef  int /*<<< orphan*/  fz_path ;
typedef  int /*<<< orphan*/  fz_matrix ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int FZ_PI ; 
 float FUNC0 (TYPE_1__,TYPE_1__) ; 
 float FUNC1 (float) ; 
 TYPE_1__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,float,float) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,float) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,float,float) ; 
 int /*<<< orphan*/  FUNC6 (float) ; 
 TYPE_1__ FUNC7 (TYPE_1__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (float,float) ; 
 float FUNC9 (float) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,float,float,int) ; 

__attribute__((used)) static void
FUNC11(fz_context *ctx, xps_document *doc, fz_path *path,
	float size_x, float size_y, float rotation_angle,
	int is_large_arc, int is_clockwise,
	float point_x, float point_y)
{
	fz_matrix rotmat, revmat;
	fz_matrix mtx;
	fz_point pt;
	float rx, ry;
	float x1, y1, x2, y2;
	float x1t, y1t;
	float cxt, cyt, cx, cy;
	float t1, t2, t3;
	float sign;
	float th1, dth;

	pt = FUNC2(ctx, path);
	x1 = pt.x;
	y1 = pt.y;
	x2 = point_x;
	y2 = point_y;
	rx = size_x;
	ry = size_y;

	if (is_clockwise != is_large_arc)
		sign = 1;
	else
		sign = -1;

	rotmat = FUNC6(rotation_angle);
	revmat = FUNC6(-rotation_angle);

	/* http://www.w3.org/TR/SVG11/implnote.html#ArcImplementationNotes */
	/* Conversion from endpoint to center parameterization */

	/* F.6.6.1 -- ensure radii are positive and non-zero */
	rx = FUNC1(rx);
	ry = FUNC1(ry);
	if (rx < 0.001f || ry < 0.001f || (x1 == x2 && y1 == y2))
	{
		FUNC3(ctx, path, x2, y2);
		return;
	}

	/* F.6.5.1 */
	pt.x = (x1 - x2) / 2;
	pt.y = (y1 - y2) / 2;
	pt = FUNC7(pt, revmat);
	x1t = pt.x;
	y1t = pt.y;

	/* F.6.6.2 -- ensure radii are large enough */
	t1 = (x1t * x1t) / (rx * rx) + (y1t * y1t) / (ry * ry);
	if (t1 > 1)
	{
		rx = rx * FUNC9(t1);
		ry = ry * FUNC9(t1);
	}

	/* F.6.5.2 */
	t1 = (rx * rx * ry * ry) - (rx * rx * y1t * y1t) - (ry * ry * x1t * x1t);
	t2 = (rx * rx * y1t * y1t) + (ry * ry * x1t * x1t);
	t3 = t1 / t2;
	/* guard against rounding errors; sqrt of negative numbers is bad for your health */
	if (t3 < 0) t3 = 0;
	t3 = FUNC9(t3);

	cxt = sign * t3 * (rx * y1t) / ry;
	cyt = sign * t3 * -(ry * x1t) / rx;

	/* F.6.5.3 */
	pt.x = cxt;
	pt.y = cyt;
	pt = FUNC7(pt, rotmat);
	cx = pt.x + (x1 + x2) / 2;
	cy = pt.y + (y1 + y2) / 2;

	/* F.6.5.4 */
	{
		fz_point coord1, coord2, coord3, coord4;
		coord1.x = 1;
		coord1.y = 0;
		coord2.x = (x1t - cxt) / rx;
		coord2.y = (y1t - cyt) / ry;
		coord3.x = (x1t - cxt) / rx;
		coord3.y = (y1t - cyt) / ry;
		coord4.x = (-x1t - cxt) / rx;
		coord4.y = (-y1t - cyt) / ry;
		th1 = FUNC0(coord1, coord2);
		dth = FUNC0(coord3, coord4);
		if (dth < 0 && !is_clockwise)
			dth += ((FZ_PI / 180) * 360);
		if (dth > 0 && is_clockwise)
			dth -= ((FZ_PI / 180) * 360);
	}

	mtx = FUNC5(FUNC4(FUNC8(cx, cy), rotation_angle), rx, ry);
	FUNC10(ctx, doc, path, mtx, th1, th1 + dth, is_clockwise);

	FUNC3(ctx, path, point_x, point_y);
}