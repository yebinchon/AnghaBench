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
 int FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC4 (char const*) ; 

int
FUNC5(const char *pidfile) {
	int pid = FUNC0(pidfile);

	if (pid) {
		FUNC2(stderr, "Skynet is already running, pid = %d.\n", pid);
		return 1;
	}

#ifdef __APPLE__
	fprintf(stderr, "'daemon' is deprecated: first deprecated in OS X 10.5 , use launchd instead.\n");
#else
	if (FUNC1(1,1)) {
		FUNC2(stderr, "Can't daemonize.\n");
		return 1;
	}
#endif

	pid = FUNC4(pidfile);
	if (pid == 0) {
		return 1;
	}

	if (FUNC3()) {
		return 1;
	}

	return 0;
}