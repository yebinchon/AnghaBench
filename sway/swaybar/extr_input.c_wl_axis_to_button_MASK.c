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
typedef  int /*<<< orphan*/  wl_fixed_t ;
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_DEBUG ; 
 int SWAY_SCROLL_DOWN ; 
 int SWAY_SCROLL_LEFT ; 
 int SWAY_SCROLL_RIGHT ; 
 int SWAY_SCROLL_UP ; 
#define  WL_POINTER_AXIS_HORIZONTAL_SCROLL 129 
#define  WL_POINTER_AXIS_VERTICAL_SCROLL 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint32_t FUNC2(uint32_t axis, wl_fixed_t value) {
	bool negative = FUNC1(value) < 0;
	switch (axis) {
	case WL_POINTER_AXIS_VERTICAL_SCROLL:
		return negative ? SWAY_SCROLL_UP : SWAY_SCROLL_DOWN;
	case WL_POINTER_AXIS_HORIZONTAL_SCROLL:
		return negative ? SWAY_SCROLL_LEFT : SWAY_SCROLL_RIGHT;
	default:
		FUNC0(SWAY_DEBUG, "Unexpected axis value on mouse scroll");
		return 0;
	}
}