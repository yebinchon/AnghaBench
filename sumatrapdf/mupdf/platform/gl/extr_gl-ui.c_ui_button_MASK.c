#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int x0; int x1; scalar_t__ y0; } ;
typedef  TYPE_1__ fz_irect ;
struct TYPE_7__ {char const* hot; char const* active; scalar_t__ down; int /*<<< orphan*/  gridsize; } ;

/* Variables and functions */
 int /*<<< orphan*/  UI_COLOR_BUTTON ; 
 int /*<<< orphan*/  UI_COLOR_TEXT_FG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_5__ ui ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__,char const*) ; 
 int FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (TYPE_1__) ; 
 TYPE_1__ FUNC5 (int,int /*<<< orphan*/ ) ; 

int FUNC6(const char *label)
{
	int width = FUNC3(label);
	fz_irect area = FUNC5(width + 20, ui.gridsize);
	int text_x = area.x0 + ((area.x1 - area.x0) - width) / 2;
	int pressed;

	if (FUNC4(area))
	{
		ui.hot = label;
		if (!ui.active && ui.down)
			ui.active = label;
	}

	pressed = (ui.hot == label && ui.active == label && ui.down);
	FUNC1(area, UI_COLOR_BUTTON, pressed);
	FUNC0(UI_COLOR_TEXT_FG);
	FUNC2(text_x + pressed, area.y0+3 + pressed, label);

	return ui.hot == label && ui.active == label && !ui.down;
}