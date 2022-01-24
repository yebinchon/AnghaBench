#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pdf_obj ;
struct TYPE_11__ {int /*<<< orphan*/  obj; TYPE_1__* page; } ;
typedef  TYPE_2__ pdf_annot ;
typedef  int /*<<< orphan*/  fz_rect ;
struct TYPE_12__ {float x; float y; } ;
typedef  TYPE_3__ fz_point ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_buffer ;
struct TYPE_10__ {int /*<<< orphan*/  doc; } ;

/* Variables and functions */
 int /*<<< orphan*/  BM ; 
 int /*<<< orphan*/  ExtGState ; 
 int /*<<< orphan*/  H ; 
 size_t LL ; 
 size_t LR ; 
 int /*<<< orphan*/  Multiply ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QuadPoints ; 
 int /*<<< orphan*/  Type ; 
 size_t UL ; 
 size_t UR ; 
 int /*<<< orphan*/  ca ; 
 float FUNC1 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  fz_empty_rect ; 
 TYPE_3__ FUNC3 (float,float) ; 
 float FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,float) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 float FUNC12 (float) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,TYPE_3__*,float) ; 

__attribute__((used)) static void
FUNC14(fz_context *ctx, pdf_annot *annot, fz_buffer *buf, fz_rect *rect, pdf_obj **res)
{
	pdf_obj *res_egs, *res_egs_h;
	pdf_obj *qp;
	fz_point quad[4], mquad[4], v;
	float opacity, h, m, dx, dy, vn;
	int i, n;

	*rect = fz_empty_rect;

	/* /Resources << /ExtGState << /H << /Type/ExtGState /BM/Multiply /CA %g >> >> >> */
	*res = FUNC10(ctx, annot->page->doc, 1);
	res_egs = FUNC8(ctx, *res, FUNC0(ExtGState), 1);
	res_egs_h = FUNC8(ctx, res_egs, FUNC0(H), 2);
	FUNC7(ctx, res_egs_h, FUNC0(Type), FUNC0(ExtGState));
	FUNC7(ctx, res_egs_h, FUNC0(BM), FUNC0(Multiply));
	opacity = FUNC4(ctx, annot);
	if (opacity < 1)
		FUNC9(ctx, res_egs_h, FUNC0(ca), opacity);

	FUNC11(ctx, annot, buf);

	FUNC2(ctx, buf, "/H gs\n");

	qp = FUNC6(ctx, annot->obj, FUNC0(QuadPoints));
	n = FUNC5(ctx, qp);
	if (n > 0)
	{
		for (i = 0; i < n; i += 8)
		{
			h = FUNC1(ctx, quad, qp, i);
			m = h / 4.2425f; /* magic number that matches adobe's appearance */
			dx = quad[LR].x - quad[LL].x;
			dy = quad[LR].y - quad[LL].y;
			vn = FUNC12(dx * dx + dy * dy);
			v = FUNC3(dx * m / vn, dy * m / vn);

			mquad[LL].x = quad[LL].x - v.x - v.y;
			mquad[LL].y = quad[LL].y - v.y + v.x;
			mquad[UL].x = quad[UL].x - v.x + v.y;
			mquad[UL].y = quad[UL].y - v.y - v.x;
			mquad[LR].x = quad[LR].x + v.x - v.y;
			mquad[LR].y = quad[LR].y + v.y + v.x;
			mquad[UR].x = quad[UR].x + v.x + v.y;
			mquad[UR].y = quad[UR].y + v.y - v.x;

			FUNC2(ctx, buf, "%g %g m\n", quad[LL].x, quad[LL].y);
			FUNC2(ctx, buf, "%g %g %g %g %g %g c\n",
				mquad[LL].x, mquad[LL].y,
				mquad[UL].x, mquad[UL].y,
				quad[UL].x, quad[UL].y);
			FUNC2(ctx, buf, "%g %g l\n", quad[UR].x, quad[UR].y);
			FUNC2(ctx, buf, "%g %g %g %g %g %g c\n",
				mquad[UR].x, mquad[UR].y,
				mquad[LR].x, mquad[LR].y,
				quad[LR].x, quad[LR].y);
			FUNC2(ctx, buf, "f\n");

			FUNC13(rect, quad, h/16);
			FUNC13(rect, mquad, 0);
		}
	}
}