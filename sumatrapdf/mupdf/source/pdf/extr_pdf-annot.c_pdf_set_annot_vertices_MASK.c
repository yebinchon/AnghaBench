#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pdf_obj ;
typedef  int /*<<< orphan*/  pdf_document ;
struct TYPE_10__ {int /*<<< orphan*/  obj; TYPE_5__* page; } ;
typedef  TYPE_1__ pdf_annot ;
struct TYPE_11__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_2__ fz_point ;
typedef  int /*<<< orphan*/  fz_matrix ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_12__ {int /*<<< orphan*/ * doc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Vertices ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 TYPE_2__ FUNC4 (TYPE_2__ const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vertices_subtypes ; 

void
FUNC10(fz_context *ctx, pdf_annot *annot, int n, const fz_point *v)
{
	pdf_document *doc = annot->page->doc;
	fz_matrix page_ctm, inv_page_ctm;
	pdf_obj *vertices;
	fz_point point;
	int i;

	FUNC1(ctx, annot, FUNC0(Vertices), vertices_subtypes);
	if (n <= 0 || !v)
		FUNC3(ctx, FZ_ERROR_GENERIC, "invalid number of vertices");

	FUNC9(ctx, annot->page, NULL, &page_ctm);
	inv_page_ctm = FUNC2(page_ctm);

	vertices = FUNC8(ctx, doc, n * 2);
	for (i = 0; i < n; ++i)
	{
		point = FUNC4(v[i], inv_page_ctm);
		FUNC5(ctx, vertices, point.x);
		FUNC5(ctx, vertices, point.y);
	}
	FUNC6(ctx, annot->obj, FUNC0(Vertices), vertices);
	FUNC7(ctx, annot);
}