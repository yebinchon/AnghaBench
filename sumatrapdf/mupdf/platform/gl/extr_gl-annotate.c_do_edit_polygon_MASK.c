#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_1__ fz_point ;
typedef  int /*<<< orphan*/  fz_irect ;
struct TYPE_9__ {scalar_t__ active; int /*<<< orphan*/  y; int /*<<< orphan*/  x; scalar_t__ down; scalar_t__ right; int /*<<< orphan*/  cursor; scalar_t__ hot; } ;

/* Variables and functions */
 int /*<<< orphan*/  GLUT_CURSOR_CROSSHAIR ; 
 int /*<<< orphan*/  GL_LINE_STRIP ; 
 int /*<<< orphan*/  GL_POINTS ; 
 int /*<<< orphan*/  ctx ; 
 TYPE_1__ FUNC0 (TYPE_1__,int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,TYPE_1__) ; 
 TYPE_1__ FUNC8 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ selected_annot ; 
 TYPE_2__ ui ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  view_page_area ; 
 int /*<<< orphan*/  view_page_ctm ; 
 int /*<<< orphan*/  view_page_inv_ctm ; 

__attribute__((used)) static void FUNC11(fz_irect canvas_area, int close)
{
	static int drawing = 0;
	fz_point a, p;

	if (FUNC10(canvas_area) && FUNC10(view_page_area))
	{
		ui.hot = selected_annot;
		if (!ui.active || ui.active == selected_annot)
			ui.cursor = GLUT_CURSOR_CROSSHAIR;
		if (!ui.active && ui.down)
		{
			ui.active = selected_annot;
			drawing = 1;
		}
	}

	if (ui.active == selected_annot && drawing)
	{
		int n = FUNC9(ctx, selected_annot);
		if (n > 0)
		{
			p = FUNC8(ctx, selected_annot, n-1);
			p = FUNC0(p, view_page_ctm);
			if (close)
			{
				a = FUNC8(ctx, selected_annot, 0);
				a = FUNC0(a, view_page_ctm);
			}
			FUNC2(GL_LINE_STRIP);
			FUNC3(1, 0, 0, 1);
			FUNC6(p.x, p.y);
			FUNC6(ui.x, ui.y);
			if (close)
				FUNC6(a.x, a.y);
			FUNC4();
		}

		FUNC3(1, 0, 0, 1);
		FUNC5(4);
		FUNC2(GL_POINTS);
		FUNC6(ui.x, ui.y);
		FUNC4();

		/* cancel on right click */
		if (ui.right)
			drawing = 0;

		/* commit point on mouse-up */
		if (!ui.down)
		{
			fz_point p = FUNC1(ui.x, ui.y, view_page_inv_ctm);
			FUNC7(ctx, selected_annot, p);
			drawing = 0;
		}
	}
}