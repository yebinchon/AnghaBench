#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  fz_irect ;

/* Variables and functions */
 int /*<<< orphan*/  UI_COLOR_BEVEL_1 ; 
 int /*<<< orphan*/  UI_COLOR_BEVEL_2 ; 
 int /*<<< orphan*/  UI_COLOR_BEVEL_3 ; 
 int /*<<< orphan*/  UI_COLOR_BEVEL_4 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(fz_irect area, int depressed)
{
	if (depressed)
		FUNC0(area, UI_COLOR_BEVEL_2, UI_COLOR_BEVEL_1, UI_COLOR_BEVEL_3, UI_COLOR_BEVEL_4);
	else
		FUNC0(area, UI_COLOR_BEVEL_3, UI_COLOR_BEVEL_4, UI_COLOR_BEVEL_2, UI_COLOR_BEVEL_1);
}