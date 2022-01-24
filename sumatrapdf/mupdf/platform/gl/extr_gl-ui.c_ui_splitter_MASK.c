#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  y1; scalar_t__ x0; int /*<<< orphan*/  y0; } ;
typedef  TYPE_1__ fz_irect ;
typedef  enum side { ____Placeholder_side } side ;
struct TYPE_6__ {int* hot; int* active; int /*<<< orphan*/  cursor; scalar_t__ down_x; scalar_t__ x; scalar_t__ down; } ;

/* Variables and functions */
 int /*<<< orphan*/  GLUT_CURSOR_LEFT_RIGHT ; 
 int L ; 
 int R ; 
 int /*<<< orphan*/  UI_COLOR_BEVEL_1 ; 
 int /*<<< orphan*/  UI_COLOR_BEVEL_2 ; 
 int /*<<< orphan*/  UI_COLOR_BEVEL_3 ; 
 int /*<<< orphan*/  UI_COLOR_BEVEL_4 ; 
 int /*<<< orphan*/  UI_COLOR_PANEL ; 
 int FUNC0 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_4__ ui ; 
 scalar_t__ FUNC3 (TYPE_1__) ; 
 TYPE_1__ FUNC4 (int,int /*<<< orphan*/ ) ; 

void FUNC5(int *x, int min, int max, enum side side)
{
	static int start_x = 0;
	fz_irect area = FUNC4(4, 0);

	if (FUNC3(area))
	{
		ui.hot = x;
		if (!ui.active && ui.down)
		{
			ui.active = x;
			start_x = *x;
		}
	}

	if (ui.active == x)
		*x = FUNC0(start_x + (ui.x - ui.down_x), min, max);

	if (ui.hot == x || ui.active == x)
		ui.cursor = GLUT_CURSOR_LEFT_RIGHT;

	if (side == L)
	{
		FUNC1(UI_COLOR_BEVEL_4);
		FUNC2(area.x0+0, area.y0, area.x0+2, area.y1);
		FUNC1(UI_COLOR_BEVEL_3);
		FUNC2(area.x0+2, area.y0, area.x0+3, area.y1);
		FUNC1(UI_COLOR_PANEL);
		FUNC2(area.x0+3, area.y0, area.x0+4, area.y1);
	}
	if (side == R)
	{
		FUNC1(UI_COLOR_PANEL);
		FUNC2(area.x0, area.y0, area.x0+2, area.y1);
		FUNC1(UI_COLOR_BEVEL_2);
		FUNC2(area.x0+2, area.y0, area.x0+3, area.y1);
		FUNC1(UI_COLOR_BEVEL_1);
		FUNC2(area.x0+3, area.y0, area.x0+4, area.y1);
	}
}