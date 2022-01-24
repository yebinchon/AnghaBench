#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pdf_obj ;
struct TYPE_11__ {int /*<<< orphan*/  obj; } ;
typedef  TYPE_1__ pdf_annot ;
typedef  int /*<<< orphan*/  fz_rect ;
struct TYPE_12__ {int x; int y; } ;
typedef  TYPE_2__ fz_point ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_buffer ;

/* Variables and functions */
 size_t LL ; 
 size_t LR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QuadPoints ; 
 size_t UL ; 
 size_t UR ; 
 float FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  fz_empty_rect ; 
 TYPE_2__ FUNC3 (int,int) ; 
 TYPE_2__ FUNC4 (TYPE_2__,TYPE_2__,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 float FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_2__*,float) ; 

__attribute__((used)) static void
FUNC10(fz_context *ctx, pdf_annot *annot, fz_buffer *buf, fz_rect *rect)
{
	fz_point quad[4], a, b, c, v;
	float h, x, w;
	pdf_obj *qp;
	int i, n;

	*rect = fz_empty_rect;

	FUNC7(ctx, annot, buf);

	qp = FUNC6(ctx, annot->obj, FUNC0(QuadPoints));
	n = FUNC5(ctx, qp);
	if (n > 0)
	{
		for (i = 0; i < n; i += 8)
		{
			int up = 1;
			h = FUNC1(ctx, quad, qp, i);
			v = FUNC3(quad[LR].x - quad[LL].x, quad[LR].y - quad[LL].y);
			w = FUNC8(v.x * v.x + v.y * v.y);
			x = 0;

			FUNC2(ctx, buf, "%g w\n", h/16);
			FUNC2(ctx, buf, "%g %g m\n", quad[LL].x, quad[LL].y);
			while (x < w)
			{
				x += h/7;
				a = FUNC4(quad[LL], quad[LR], x/w);
				if (up)
				{
					b = FUNC4(quad[UL], quad[UR], x/w);
					c = FUNC4(a, b, 1/7.0f);
					FUNC2(ctx, buf, "%g %g l\n", c.x, c.y);
				}
				else
					FUNC2(ctx, buf, "%g %g l\n", a.x, a.y);
				up = !up;
			}
			FUNC2(ctx, buf, "S\n");

			FUNC9(rect, quad, h/16);
		}
	}
}