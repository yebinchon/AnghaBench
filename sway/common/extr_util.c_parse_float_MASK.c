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
 float NAN ; 
 int /*<<< orphan*/  SWAY_DEBUG ; 
 scalar_t__ errno ; 
 float FUNC0 (char const*,char**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 

float FUNC2(const char *value) {
	errno = 0;
	char *end;
	float flt = FUNC0(value, &end);
	if (*end || errno) {
		FUNC1(SWAY_DEBUG, "Invalid float value '%s', defaulting to NAN", value);
		return NAN;
	}
	return flt;
}