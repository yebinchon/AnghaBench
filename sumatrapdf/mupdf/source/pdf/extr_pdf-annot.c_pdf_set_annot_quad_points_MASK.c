#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pdf_obj ;
typedef  int /*<<< orphan*/  pdf_document ;
struct TYPE_18__ {int /*<<< orphan*/  obj; TYPE_9__* page; } ;
typedef  TYPE_5__ pdf_annot ;
struct TYPE_17__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_16__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_15__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_14__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_19__ {TYPE_4__ lr; TYPE_3__ ll; TYPE_2__ ur; TYPE_1__ ul; } ;
typedef  TYPE_6__ fz_quad ;
typedef  int /*<<< orphan*/  fz_matrix ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_20__ {int /*<<< orphan*/ * doc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QuadPoints ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 TYPE_6__ FUNC4 (TYPE_6__ const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_9__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  quad_point_subtypes ; 

void
FUNC10(fz_context *ctx, pdf_annot *annot, int n, const fz_quad *q)
{
	pdf_document *doc = annot->page->doc;
	fz_matrix page_ctm, inv_page_ctm;
	pdf_obj *quad_points;
	fz_quad quad;
	int i;

	FUNC1(ctx, annot, FUNC0(QuadPoints), quad_point_subtypes);
	if (n <= 0 || !q)
		FUNC3(ctx, FZ_ERROR_GENERIC, "invalid number of quadrilaterals");

	FUNC9(ctx, annot->page, NULL, &page_ctm);
	inv_page_ctm = FUNC2(page_ctm);

	quad_points = FUNC8(ctx, doc, n);
	for (i = 0; i < n; ++i)
	{
		quad = FUNC4(q[i], inv_page_ctm);
		FUNC5(ctx, quad_points, quad.ul.x);
		FUNC5(ctx, quad_points, quad.ul.y);
		FUNC5(ctx, quad_points, quad.ur.x);
		FUNC5(ctx, quad_points, quad.ur.y);
		FUNC5(ctx, quad_points, quad.ll.x);
		FUNC5(ctx, quad_points, quad.ll.y);
		FUNC5(ctx, quad_points, quad.lr.x);
		FUNC5(ctx, quad_points, quad.lr.y);
	}
	FUNC6(ctx, annot->obj, FUNC0(QuadPoints), quad_points);
	FUNC7(ctx, annot);
}