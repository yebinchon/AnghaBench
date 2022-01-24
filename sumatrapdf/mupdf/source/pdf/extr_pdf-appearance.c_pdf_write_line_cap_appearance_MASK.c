#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pdf_obj ;
typedef  int /*<<< orphan*/  fz_rect ;
struct TYPE_5__ {float member_0; float member_1; float x; float y; } ;
typedef  TYPE_1__ fz_point ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  Butt ; 
 float CIRCLE_MAGIC ; 
 int /*<<< orphan*/  Circle ; 
 int /*<<< orphan*/  ClosedArrow ; 
 int /*<<< orphan*/  Diamond ; 
 int FZ_PI ; 
 int /*<<< orphan*/  OpenArrow ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RClosedArrow ; 
 int /*<<< orphan*/  ROpenArrow ; 
 int /*<<< orphan*/  Slash ; 
 int /*<<< orphan*/  Square ; 
 int FUNC1 (float,float) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,float,float,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__) ; 
 TYPE_1__ FUNC4 (float,float) ; 
 float FUNC5 (int,float) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,float,float,float) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,float,float,float,float,float) ; 
 TYPE_1__ FUNC10 (float,int /*<<< orphan*/ ,float) ; 

__attribute__((used)) static void
FUNC11(fz_context *ctx, fz_buffer *buf, fz_rect *rect,
		float x, float y, float dx, float dy, float w,
		int sc, int ic, pdf_obj *cap)
{
	if (cap == FUNC0(Square))
	{
		float r = FUNC5(2.5f, w * 2.5f);
		FUNC2(ctx, buf, "%g %g %g %g re\n", x-r, y-r, r*2, r*2);
		FUNC8(ctx, buf, sc, ic);
		FUNC6(rect, x, y, r);
	}
	else if (cap == FUNC0(Circle))
	{
		float r = FUNC5(2.5f, w * 2.5f);
		float m = r * CIRCLE_MAGIC;
		FUNC2(ctx, buf, "%g %g m\n", x, y+r);
		FUNC2(ctx, buf, "%g %g %g %g %g %g c\n", x+m, y+r, x+r, y+m, x+r, y);
		FUNC2(ctx, buf, "%g %g %g %g %g %g c\n", x+r, y-m, x+m, y-r, x, y-r);
		FUNC2(ctx, buf, "%g %g %g %g %g %g c\n", x-m, y-r, x-r, y-m, x-r, y);
		FUNC2(ctx, buf, "%g %g %g %g %g %g c\n", x-r, y+m, x-m, y+r, x, y+r);
		FUNC8(ctx, buf, sc, ic);
		FUNC6(rect, x, y, r);
	}
	else if (cap == FUNC0(Diamond))
	{
		float r = FUNC5(2.5f, w * 2.5f);
		FUNC2(ctx, buf, "%g %g m\n", x, y+r);
		FUNC2(ctx, buf, "%g %g l\n", x+r, y);
		FUNC2(ctx, buf, "%g %g l\n", x, y-r);
		FUNC2(ctx, buf, "%g %g l\n", x-r, y);
		FUNC8(ctx, buf, sc, ic);
		FUNC6(rect, x, y, r);
	}
	else if (cap == FUNC0(OpenArrow))
	{
		FUNC9(ctx, buf, rect, x, y, dx, dy, w);
		FUNC7(ctx, buf, sc);
	}
	else if (cap == FUNC0(ClosedArrow))
	{
		FUNC9(ctx, buf, rect, x, y, dx, dy, w);
		FUNC8(ctx, buf, sc, ic);
	}
	/* PDF 1.5 */
	else if (cap == FUNC0(Butt))
	{
		float r = FUNC5(3, w * 3);
		fz_point a = { x-dy*r, y+dx*r };
		fz_point b = { x+dy*r, y-dx*r };
		FUNC2(ctx, buf, "%g %g m\n", a.x, a.y);
		FUNC2(ctx, buf, "%g %g l\n", b.x, b.y);
		FUNC7(ctx, buf, sc);
		*rect = FUNC3(*rect, a);
		*rect = FUNC3(*rect, b);
	}
	else if (cap == FUNC0(ROpenArrow))
	{
		FUNC9(ctx, buf, rect, x, y, -dx, -dy, w);
		FUNC7(ctx, buf, sc);
	}
	else if (cap == FUNC0(RClosedArrow))
	{
		FUNC9(ctx, buf, rect, x, y, -dx, -dy, w);
		FUNC8(ctx, buf, sc, ic);
	}
	/* PDF 1.6 */
	else if (cap == FUNC0(Slash))
	{
		float r = FUNC5(5, w * 5);
		float angle = FUNC1(dy, dx) - (30 * FZ_PI / 180);
		fz_point a, b, v;
		v = FUNC10(angle, 0, r);
		a = FUNC4(x + v.x, y + v.y);
		v = FUNC10(angle, 0, -r);
		b = FUNC4(x + v.x, y + v.y);
		FUNC2(ctx, buf, "%g %g m\n", a.x, a.y);
		FUNC2(ctx, buf, "%g %g l\n", b.x, b.y);
		FUNC7(ctx, buf, sc);
		*rect = FUNC3(*rect, a);
		*rect = FUNC3(*rect, b);
	}
}