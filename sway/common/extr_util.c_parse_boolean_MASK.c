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
 scalar_t__ FUNC0 (char const*,char*) ; 

bool FUNC1(const char *boolean, bool current) {
	if (FUNC0(boolean, "1") == 0
			|| FUNC0(boolean, "yes") == 0
			|| FUNC0(boolean, "on") == 0
			|| FUNC0(boolean, "true") == 0
			|| FUNC0(boolean, "enable") == 0
			|| FUNC0(boolean, "enabled") == 0
			|| FUNC0(boolean, "active") == 0) {
		return true;
	} else if (FUNC0(boolean, "toggle") == 0) {
		return !current;
	}
	// All other values are false to match i3
	return false;
}