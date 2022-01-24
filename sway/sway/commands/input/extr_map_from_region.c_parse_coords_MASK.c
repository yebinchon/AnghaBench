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
 double FUNC0 (char const*,char**) ; 

__attribute__((used)) static bool FUNC1(const char *str, double *x, double *y, bool *mm) {
	*mm = false;

	char *end;
	*x = FUNC0(str, &end);
	if (end[0] != 'x') {
		return false;
	}
	++end;

	*y = FUNC0(end, &end);
	if (end[0] == 'm') {
		// Expect mm
		if (end[1] != 'm') {
			return false;
		}
		*mm = true;
		end = &end[2];
	}
	if (end[0] != '\0') {
		return false;
	}

	return true;
}