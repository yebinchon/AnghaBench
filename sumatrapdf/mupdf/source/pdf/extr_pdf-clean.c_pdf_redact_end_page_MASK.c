#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pdf_page ;
typedef  int /*<<< orphan*/  pdf_obj ;
struct TYPE_17__ {int /*<<< orphan*/  obj; } ;
typedef  TYPE_5__ pdf_annot ;
struct TYPE_18__ {int /*<<< orphan*/  y1; int /*<<< orphan*/  x0; int /*<<< orphan*/  x1; int /*<<< orphan*/  y0; } ;
typedef  TYPE_6__ fz_rect ;
struct TYPE_16__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_15__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_14__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_13__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_19__ {TYPE_4__ ul; TYPE_3__ ur; TYPE_2__ lr; TYPE_1__ ll; } ;
typedef  TYPE_7__ fz_quad ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_buffer ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QuadPoints ; 
 int /*<<< orphan*/  Rect ; 
 int /*<<< orphan*/  Redact ; 
 int /*<<< orphan*/  Subtype ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_6__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC7 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 TYPE_7__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC9(fz_context *ctx, fz_buffer *buf, pdf_obj *res, void *opaque)
{
	pdf_page *page = opaque;
	pdf_annot *annot;
	pdf_obj *qp;
	int i, n;

	FUNC2(ctx, buf, "0 g\n");

	for (annot = FUNC6(ctx, page); annot; annot = FUNC7(ctx, annot))
	{
		if (FUNC4(ctx, annot->obj, FUNC0(Subtype)) == FUNC0(Redact))
		{
			qp = FUNC4(ctx, annot->obj, FUNC0(QuadPoints));
			n = FUNC3(ctx, qp);
			if (n > 0)
			{
				for (i = 0; i < n; i += 8)
				{
					fz_quad q = FUNC8(ctx, qp, i);
					FUNC1(ctx, buf, "%g %g m\n", q.ll.x, q.ll.y);
					FUNC1(ctx, buf, "%g %g l\n", q.lr.x, q.lr.y);
					FUNC1(ctx, buf, "%g %g l\n", q.ur.x, q.ur.y);
					FUNC1(ctx, buf, "%g %g l\n", q.ul.x, q.ul.y);
					FUNC2(ctx, buf, "f\n");
				}
			}
			else
			{
				fz_rect r = FUNC5(ctx, annot->obj, FUNC0(Rect));
				FUNC1(ctx, buf, "%g %g m\n", r.x0, r.y0);
				FUNC1(ctx, buf, "%g %g l\n", r.x1, r.y0);
				FUNC1(ctx, buf, "%g %g l\n", r.x1, r.y1);
				FUNC1(ctx, buf, "%g %g l\n", r.x0, r.y1);
				FUNC2(ctx, buf, "f\n");
			}
		}
	}
}