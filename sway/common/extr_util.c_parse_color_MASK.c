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
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_DEBUG ; 
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 

uint32_t FUNC3(const char *color) {
	if (color[0] == '#') {
		++color;
	}

	int len = FUNC0(color);
	if (len != 6 && len != 8) {
		FUNC2(SWAY_DEBUG, "Invalid color %s, defaulting to color 0xFFFFFFFF", color);
		return 0xFFFFFFFF;
	}
	uint32_t res = (uint32_t)FUNC1(color, NULL, 16);
	if (FUNC0(color) == 6) {
		res = (res << 8) | 0xFF;
	}
	return res;
}