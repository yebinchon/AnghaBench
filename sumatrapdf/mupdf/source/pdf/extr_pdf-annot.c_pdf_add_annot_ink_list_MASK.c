#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pdf_obj ;
struct TYPE_9__ {int /*<<< orphan*/  obj; int /*<<< orphan*/  page; } ;
typedef  TYPE_1__ pdf_annot ;
struct TYPE_10__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_2__ fz_point ;
typedef  int /*<<< orphan*/  fz_matrix ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  InkList ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__ FUNC3 (TYPE_2__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ink_list_subtypes ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC11(fz_context *ctx, pdf_annot *annot, int n, fz_point p[])
{
	fz_matrix page_ctm, inv_page_ctm;
	pdf_obj *ink_list, *stroke;
	int i;

	FUNC1(ctx, annot, FUNC0(InkList), ink_list_subtypes);

	FUNC10(ctx, annot->page, NULL, &page_ctm);
	inv_page_ctm = FUNC2(page_ctm);

	ink_list = FUNC6(ctx, annot->obj, FUNC0(InkList));
	if (!FUNC9(ctx, ink_list))
		ink_list = FUNC7(ctx, annot->obj, FUNC0(InkList), 10);

	stroke = FUNC4(ctx, ink_list, n * 2);
	for (i = 0; i < n; ++i)
	{
		fz_point tp = FUNC3(p[i], inv_page_ctm);
		FUNC5(ctx, stroke, tp.x);
		FUNC5(ctx, stroke, tp.y);
	}

	FUNC8(ctx, annot);
}