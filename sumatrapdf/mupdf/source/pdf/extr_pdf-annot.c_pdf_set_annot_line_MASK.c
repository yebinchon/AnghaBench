#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pdf_obj ;
struct TYPE_11__ {int /*<<< orphan*/  obj; TYPE_6__* page; } ;
typedef  TYPE_1__ pdf_annot ;
struct TYPE_12__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_2__ fz_point ;
typedef  int /*<<< orphan*/  fz_matrix ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_13__ {int /*<<< orphan*/  doc; } ;

/* Variables and functions */
 int /*<<< orphan*/  L ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__ FUNC3 (TYPE_2__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  line_subtypes ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC9(fz_context *ctx, pdf_annot *annot, fz_point a, fz_point b)
{
	fz_matrix page_ctm, inv_page_ctm;
	pdf_obj *line;

	FUNC1(ctx, annot, FUNC0(L), line_subtypes);

	FUNC8(ctx, annot->page, NULL, &page_ctm);
	inv_page_ctm = FUNC2(page_ctm);

	a = FUNC3(a, inv_page_ctm);
	b = FUNC3(b, inv_page_ctm);

	line = FUNC7(ctx, annot->page->doc, 4);
	FUNC5(ctx, annot->obj, FUNC0(L), line);
	FUNC4(ctx, line, a.x);
	FUNC4(ctx, line, a.y);
	FUNC4(ctx, line, b.x);
	FUNC4(ctx, line, b.y);

	FUNC6(ctx, annot);
}