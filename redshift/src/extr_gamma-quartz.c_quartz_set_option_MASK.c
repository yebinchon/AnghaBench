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
typedef  int /*<<< orphan*/  quartz_state_t ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC2 (char const*,char*) ; 

__attribute__((used)) static int
FUNC3(quartz_state_t *state, const char *key, const char *value)
{
	if (FUNC2(key, "preserve") == 0) {
		FUNC1(stderr, FUNC0("Parameter `%s` is now always on; "
				  " Use the `%s` command-line option"
				  " to disable.\n"),
			key, "-P");
	} else {
		FUNC1(stderr, FUNC0("Unknown method parameter: `%s'.\n"), key);
		return -1;
	}

	return 0;
}