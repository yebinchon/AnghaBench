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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PR_GET_CHILD_SUBREAPER ; 
 int /*<<< orphan*/  errno ; 
 int FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  reaper_warning ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5 () {
	/* Check that we can properly reap zombies */
#if HAS_SUBREAPER
	int bit = 0;
#endif

	if (FUNC2() == 1) {
		return;
	}

#if HAS_SUBREAPER
	if (prctl(PR_GET_CHILD_SUBREAPER, &bit)) {
		PRINT_DEBUG("Failed to read child subreaper attribute: %s", strerror(errno));
	} else if (bit == 1) {
		return;
	}
#endif

	FUNC1(reaper_warning);
}