#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int x0; int y0; int x1; int y1; } ;
typedef  TYPE_1__ fz_irect ;

/* Variables and functions */
 int /*<<< orphan*/  UI_COLOR_PANEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int) ; 
 TYPE_1__ FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__) ; 

void FUNC4(int w, int h, int padx, int pady, int opaque)
{
	fz_irect area = FUNC2(w, h);
	if (opaque)
	{
		FUNC0(UI_COLOR_PANEL);
		FUNC1(area.x0, area.y0, area.x1, area.y1);
	}
	area.x0 += padx; area.y0 += padx;
	area.x1 -= pady; area.y1 -= pady;
	FUNC3(area);
}