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
struct line {int dummy; } ;
struct TYPE_5__ {int y1; int y0; scalar_t__ x0; scalar_t__ x1; } ;
typedef  TYPE_1__ fz_irect ;
struct TYPE_6__ {int lineheight; int scroll_y; int window_h; } ;

/* Variables and functions */
 int /*<<< orphan*/  GL_SCISSOR_TEST ; 
 int /*<<< orphan*/  UI_COLOR_TEXT_FG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (struct line*) ; 
 TYPE_4__ ui ; 
 int FUNC5 (char*,struct line*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int,struct line*,int) ; 
 scalar_t__ FUNC7 (TYPE_1__) ; 
 TYPE_1__ FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int,scalar_t__,int,int*,int,int) ; 

void FUNC10(char *text, int width, int height, int *scroll)
{
	struct line lines[500];
	fz_irect area;
	int n;

	area = FUNC8(width, height);
	n = FUNC5(text, lines, FUNC4(lines), area.x1-area.x0 - 16, NULL);
	if (n > (area.y1-area.y0) / ui.lineheight)
	{
		if (FUNC7(area))
			*scroll -= ui.scroll_y * ui.lineheight * 3;
		FUNC9(area.x1-16, area.y0, area.x1, area.y1, scroll, area.y1-area.y0, n * ui.lineheight);
	}
	else
		*scroll = 0;

	FUNC3(area.x0, ui.window_h-area.y1, area.x1-area.x0-16, area.y1-area.y0);
	FUNC2(GL_SCISSOR_TEST);
	FUNC0(UI_COLOR_TEXT_FG);
	FUNC6(area.x0, area.y0 - *scroll, lines, n);
	FUNC1(GL_SCISSOR_TEST);
}