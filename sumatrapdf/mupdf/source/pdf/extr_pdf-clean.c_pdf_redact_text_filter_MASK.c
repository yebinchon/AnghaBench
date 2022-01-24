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
typedef  int /*<<< orphan*/  pdf_page ;
typedef  int /*<<< orphan*/  pdf_obj ;
struct TYPE_11__ {int /*<<< orphan*/  obj; } ;
typedef  TYPE_1__ pdf_annot ;
typedef  int /*<<< orphan*/  fz_rect ;
typedef  int /*<<< orphan*/  fz_quad ;
struct TYPE_12__ {int /*<<< orphan*/  f; int /*<<< orphan*/  e; } ;
typedef  TYPE_2__ fz_matrix ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QuadPoints ; 
 int /*<<< orphan*/  Rect ; 
 int /*<<< orphan*/  Redact ; 
 int /*<<< orphan*/  Subtype ; 
 TYPE_2__ FUNC1 (TYPE_2__,TYPE_2__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC11(fz_context *ctx, void *opaque, int *ucsbuf, int ucslen, fz_matrix trm, fz_matrix ctm, fz_rect bbox)
{
	pdf_page *page = opaque;
	pdf_annot *annot;
	pdf_obj *qp;
	fz_rect r;
	fz_quad q;
	int i, n;

	trm = FUNC1(trm, ctm);

	for (annot = FUNC8(ctx, page); annot; annot = FUNC9(ctx, annot))
	{
		if (FUNC6(ctx, annot->obj, FUNC0(Subtype)) == FUNC0(Redact))
		{
			qp = FUNC6(ctx, annot->obj, FUNC0(QuadPoints));
			n = FUNC5(ctx, qp);
			if (n > 0)
			{
				for (i = 0; i < n; i += 8)
				{
					q = FUNC10(ctx, qp, i);
					if (FUNC2(FUNC4(trm.e, trm.f), q))
						return 1;
				}
			}
			else
			{
				r = FUNC7(ctx, annot->obj, FUNC0(Rect));
				if (FUNC3(FUNC4(trm.e, trm.f), r))
					return 1;
			}
		}
	}

	return 0;
}