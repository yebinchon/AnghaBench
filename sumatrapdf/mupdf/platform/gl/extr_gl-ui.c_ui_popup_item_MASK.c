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
struct TYPE_5__ {int /*<<< orphan*/  y0; scalar_t__ x0; int /*<<< orphan*/  y1; int /*<<< orphan*/  x1; } ;
typedef  TYPE_1__ fz_irect ;
struct TYPE_6__ {char const* hot; int /*<<< orphan*/  down; int /*<<< orphan*/  lineheight; } ;

/* Variables and functions */
 int /*<<< orphan*/  UI_COLOR_TEXT_FG ; 
 int /*<<< orphan*/  UI_COLOR_TEXT_SEL_BG ; 
 int /*<<< orphan*/  UI_COLOR_TEXT_SEL_FG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__ ui ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC3 (TYPE_1__) ; 
 TYPE_1__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(const char *title)
{
	fz_irect area = FUNC4(0, ui.lineheight);

	if (FUNC3(area))
	{
		ui.hot = title;
		FUNC0(UI_COLOR_TEXT_SEL_BG);
		FUNC1(area.x0, area.y0, area.x1, area.y1);
		FUNC0(UI_COLOR_TEXT_SEL_FG);
		FUNC2(area.x0 + 4, area.y0, title);
	}
	else
	{
		FUNC0(UI_COLOR_TEXT_FG);
		FUNC2(area.x0 + 4, area.y0, title);
	}

	return ui.hot == title && !ui.down;
}