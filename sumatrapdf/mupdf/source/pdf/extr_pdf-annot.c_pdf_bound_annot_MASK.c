#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_4__* page; int /*<<< orphan*/  obj; } ;
typedef  TYPE_1__ pdf_annot ;
struct TYPE_12__ {int /*<<< orphan*/  y1; int /*<<< orphan*/  x0; } ;
typedef  TYPE_2__ fz_rect ;
struct TYPE_13__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_3__ fz_point ;
typedef  int /*<<< orphan*/  fz_matrix ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_14__ {int /*<<< orphan*/  obj; } ;

/* Variables and functions */
 int /*<<< orphan*/  F ; 
 int PDF_ANNOT_IS_NO_ROTATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Rect ; 
 int /*<<< orphan*/  Rotate ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_3__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ FUNC4 (TYPE_2__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

fz_rect
FUNC11(fz_context *ctx, pdf_annot *annot)
{
	fz_matrix page_ctm;
	fz_rect rect;
	int flags;

	rect = FUNC8(ctx, annot->obj, FUNC0(Rect));
	FUNC9(ctx, annot->page, NULL, &page_ctm);

	flags = FUNC7(ctx, annot->obj, FUNC0(F));
	if (flags & PDF_ANNOT_IS_NO_ROTATE)
	{
		int rotate = FUNC10(ctx, FUNC6(ctx, annot->page->obj, FUNC0(Rotate)));
		fz_point tp = FUNC3(rect.x0, rect.y1, page_ctm);
		page_ctm = FUNC1(page_ctm, FUNC5(-tp.x, -tp.y));
		page_ctm = FUNC1(page_ctm, FUNC2(-rotate));
		page_ctm = FUNC1(page_ctm, FUNC5(tp.x, tp.y));
	}

	return FUNC4(rect, page_ctm);
}