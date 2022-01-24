#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  super; } ;
typedef  TYPE_1__ pdf_page ;
struct TYPE_8__ {scalar_t__ y0; scalar_t__ y1; scalar_t__ x0; scalar_t__ x1; } ;
typedef  TYPE_2__ fz_irect ;
struct TYPE_10__ {int /*<<< orphan*/  page; int /*<<< orphan*/  chapter; } ;
struct TYPE_9__ {scalar_t__ h; scalar_t__ w; } ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_SEPARATION_COMPOSITE ; 
 scalar_t__ PDF_ANNOT_WIDGET ; 
 int /*<<< orphan*/  ctx ; 
 scalar_t__ currenticc ; 
 TYPE_6__ currentpage ; 
 scalar_t__ currentseparations ; 
 int /*<<< orphan*/  doc ; 
 int /*<<< orphan*/  draw_page_bounds ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_2__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * fzpage ; 
 int /*<<< orphan*/ * links ; 
 TYPE_1__* page ; 
 int /*<<< orphan*/  page_bounds ; 
 TYPE_3__ page_tex ; 
 int /*<<< orphan*/ * page_text ; 
 scalar_t__ pdf ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * selected_annot ; 
 int /*<<< orphan*/ * seps ; 
 int /*<<< orphan*/  FUNC19 () ; 

void FUNC20(void)
{
	fz_irect area;

	/* clear all editor selections */
	if (selected_annot && FUNC18(ctx, selected_annot) == PDF_ANNOT_WIDGET)
		FUNC17(ctx, selected_annot);
	selected_annot = NULL;

	FUNC7(ctx, page_text);
	page_text = NULL;
	FUNC6(ctx, seps);
	seps = NULL;
	FUNC4(ctx, links);
	links = NULL;
	FUNC5(ctx, fzpage);
	fzpage = NULL;

	fzpage = FUNC10(ctx, doc, currentpage.chapter, currentpage.page);
	if (pdf)
		page = (pdf_page*)fzpage;

	links = FUNC11(ctx, fzpage);
	page_text = FUNC13(ctx, fzpage, NULL);

	if (currenticc)
		FUNC8(ctx);
	else
		FUNC2(ctx);

	if (currentseparations)
	{
		seps = FUNC14(ctx, &page->super);
		if (seps)
		{
			int i, n = FUNC1(ctx, seps);
			for (i = 0; i < n; i++)
				FUNC16(ctx, seps, i, FZ_SEPARATION_COMPOSITE);
		}
		else if (FUNC15(ctx, &page->super))
			seps = FUNC12(ctx, 0);
		else if (FUNC3(ctx, doc))
			seps = FUNC12(ctx, 0);
	}

	/* compute bounds here for initial window size */
	page_bounds = FUNC0(ctx, fzpage);
	FUNC19();

	area = FUNC9(draw_page_bounds);
	page_tex.w = area.x1 - area.x0;
	page_tex.h = area.y1 - area.y0;
}