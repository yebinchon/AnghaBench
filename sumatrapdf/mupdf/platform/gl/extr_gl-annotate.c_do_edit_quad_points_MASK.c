#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_19__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_18__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_17__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_21__ {TYPE_4__ ll; TYPE_3__ lr; TYPE_2__ ur; TYPE_1__ ul; } ;
typedef  TYPE_5__ fz_quad ;
struct TYPE_22__ {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_6__ fz_point ;
struct TYPE_23__ {scalar_t__ active; scalar_t__ down; scalar_t__ right; int /*<<< orphan*/  y; int /*<<< orphan*/  x; int /*<<< orphan*/  cursor; scalar_t__ hot; } ;

/* Variables and functions */
 int /*<<< orphan*/  GLUT_CURSOR_TEXT ; 
 int /*<<< orphan*/  GL_BLEND ; 
 int /*<<< orphan*/  GL_ONE_MINUS_DST_COLOR ; 
 int /*<<< orphan*/  GL_QUADS ; 
 int /*<<< orphan*/  GL_ZERO ; 
 int /*<<< orphan*/  ctx ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_6__,TYPE_6__,TYPE_5__*,int /*<<< orphan*/ ) ; 
 TYPE_6__ FUNC1 (TYPE_6__,int /*<<< orphan*/ ) ; 
 TYPE_5__ FUNC2 (TYPE_5__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*) ; 
 int /*<<< orphan*/  page_text ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__,TYPE_5__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ selected_annot ; 
 TYPE_7__ ui ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  view_page_area ; 
 int /*<<< orphan*/  view_page_ctm ; 
 int /*<<< orphan*/  view_page_inv_ctm ; 

__attribute__((used)) static void FUNC14(void)
{
	static fz_point pt = { 0, 0 };
	static int marking = 0;
	fz_quad hits[1000];
	int i, n;

	if (FUNC13(view_page_area))
	{
		ui.hot = selected_annot;
		if (!ui.active || ui.active == selected_annot)
			ui.cursor = GLUT_CURSOR_TEXT;
		if (!ui.active && ui.down)
		{
			ui.active = selected_annot;
			marking = 1;
			pt.x = ui.x;
			pt.y = ui.y;
		}
	}

	if (ui.active == selected_annot && marking)
	{
		fz_point page_a = { pt.x, pt.y };
		fz_point page_b = { ui.x, ui.y };

		page_a = FUNC1(page_a, view_page_inv_ctm);
		page_b = FUNC1(page_b, view_page_inv_ctm);

		n = FUNC0(ctx, page_text, page_a, page_b, hits, FUNC10(hits));

		FUNC4(GL_ONE_MINUS_DST_COLOR, GL_ZERO); /* invert destination color */
		FUNC7(GL_BLEND);

		FUNC5(1, 1, 1, 1);
		FUNC3(GL_QUADS);
		for (i = 0; i < n; ++i)
		{
			fz_quad thit = FUNC2(hits[i], view_page_ctm);
			FUNC9(thit.ul.x, thit.ul.y);
			FUNC9(thit.ur.x, thit.ur.y);
			FUNC9(thit.lr.x, thit.lr.y);
			FUNC9(thit.ll.x, thit.ll.y);
		}
		FUNC8();

		FUNC6(GL_BLEND);

		/* cancel on right click */
		if (ui.right)
			marking = 0;

		if (!ui.down)
		{
			if (n > 0)
			{
				FUNC12(ctx, selected_annot);
				for (i = 0; i < n; ++i)
					FUNC11(ctx, selected_annot, hits[i]);
			}
			marking = 0;
		}
	}
}