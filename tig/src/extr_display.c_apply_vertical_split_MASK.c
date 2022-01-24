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

/* Variables and functions */
 int FUNC0 (int,scalar_t__) ; 
 int FUNC1 (int,scalar_t__) ; 
 scalar_t__ MIN_VIEW_WIDTH ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  opt_split_view_width ; 

int
FUNC3(int base_width)
{
	int width  = FUNC2(opt_split_view_width, base_width);

	width = FUNC0(width, MIN_VIEW_WIDTH);
	width = FUNC1(width, base_width - MIN_VIEW_WIDTH);

	return width;
}