#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pdf_obj ;
struct TYPE_10__ {int /*<<< orphan*/  obj; } ;
typedef  TYPE_1__ pdf_annot ;
typedef  int /*<<< orphan*/  fz_rect ;
struct TYPE_11__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
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
 TYPE_2__ FUNC3 (TYPE_2__,TYPE_2__,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_2__*,float) ; 

__attribute__((used)) static void
FUNC8(fz_context *ctx, pdf_annot *annot, fz_buffer *buf, fz_rect *rect)
{
	fz_point quad[4], a, b;
	float h;
	pdf_obj *qp;
	int i, n;

	*rect = fz_empty_rect;

	FUNC6(ctx, annot, buf);

	qp = FUNC5(ctx, annot->obj, FUNC0(QuadPoints));
	n = FUNC4(ctx, qp);
	if (n > 0)
	{
		for (i = 0; i < n; i += 8)
		{
			/* Acrobat draws the line at 1/7 of the box width from the bottom
			 * of the box and 1/16 thick of the box width. */

			h = FUNC1(ctx, quad, qp, i);
			a = FUNC3(quad[LL], quad[UL], 1/7.0f);
			b = FUNC3(quad[LR], quad[UR], 1/7.0f);

			FUNC2(ctx, buf, "%g w\n", h/16);
			FUNC2(ctx, buf, "%g %g m\n", a.x, a.y);
			FUNC2(ctx, buf, "%g %g l\n", b.x, b.y);
			FUNC2(ctx, buf, "S\n");

			FUNC7(rect, quad, h/16);
		}
	}
}