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
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  EV_KEY ; 
 scalar_t__ SWAY_SCROLL_DOWN ; 
 scalar_t__ SWAY_SCROLL_LEFT ; 
 scalar_t__ SWAY_SCROLL_RIGHT ; 
 scalar_t__ SWAY_SCROLL_UP ; 
 char* FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 

const char *FUNC1(uint32_t button) {
	const char *name = FUNC0(EV_KEY, button);
	if (!name) {
		if (button == SWAY_SCROLL_UP) {
			name = "SWAY_SCROLL_UP";
		} else if (button == SWAY_SCROLL_DOWN) {
			name = "SWAY_SCROLL_DOWN";
		} else if (button == SWAY_SCROLL_LEFT) {
			name = "SWAY_SCROLL_LEFT";
		} else if (button == SWAY_SCROLL_RIGHT) {
			name = "SWAY_SCROLL_RIGHT";
		}
	}
	return name;
}