#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {void* y; void* x; } ;
typedef  TYPE_1__ fz_point ;
struct TYPE_12__ {int /*<<< orphan*/  y1; int /*<<< orphan*/  y0; int /*<<< orphan*/  x1; int /*<<< orphan*/  x0; } ;
typedef  TYPE_2__ fz_irect ;
struct TYPE_13__ {scalar_t__ active; int x; int y; scalar_t__ down; scalar_t__ right; int /*<<< orphan*/  cursor; scalar_t__ hot; } ;

/* Variables and functions */
 int /*<<< orphan*/  GLUT_CURSOR_CROSSHAIR ; 
 int /*<<< orphan*/  GL_LINE_STRIP ; 
 int INT_MIN ; 
 int /*<<< orphan*/  ctx ; 
 void* FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC1 (TYPE_1__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (void*,void*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,int,TYPE_1__*) ; 
 scalar_t__ selected_annot ; 
 TYPE_5__ ui ; 
 scalar_t__ FUNC8 (TYPE_2__) ; 
 TYPE_2__ view_page_area ; 
 int /*<<< orphan*/  view_page_inv_ctm ; 

__attribute__((used)) static void FUNC9(fz_irect canvas_area)
{
	static int drawing = 0;
	static fz_point p[1000];
	static int n, last_x, last_y;
	int i;

	if (FUNC8(canvas_area) && FUNC8(view_page_area))
	{
		ui.hot = selected_annot;
		if (!ui.active || ui.active == selected_annot)
			ui.cursor = GLUT_CURSOR_CROSSHAIR;
		if (!ui.active && ui.down)
		{
			ui.active = selected_annot;
			drawing = 1;
			n = 0;
			last_x = INT_MIN;
			last_y = INT_MIN;
		}
	}

	if (ui.active == selected_annot && drawing)
	{
		if (n < (int)FUNC6(p) && (ui.x != last_x || ui.y != last_y))
		{
			p[n].x = FUNC0(ui.x, view_page_area.x0, view_page_area.x1);
			p[n].y = FUNC0(ui.y, view_page_area.y0, view_page_area.y1);
			++n;
		}
		last_x = ui.x;
		last_y = ui.y;

		if (n > 1)
		{
			FUNC2(GL_LINE_STRIP);
			FUNC3(1, 0, 0, 1);
			for (i = 0; i < n; ++i)
				FUNC5(p[i].x, p[i].y);
			FUNC4();
		}

		/* cancel on right click */
		if (ui.right)
		{
			drawing = 0;
			n = 0;
		}

		/* commit stroke on mouse-up */
		if (!ui.down)
		{
			if (n > 1)
			{
				for (i = 0; i < n; ++i)
					p[i] = FUNC1(p[i], view_page_inv_ctm);
				FUNC7(ctx, selected_annot, n, p);
			}
			drawing = 0;
			n = 0;
		}
	}
}