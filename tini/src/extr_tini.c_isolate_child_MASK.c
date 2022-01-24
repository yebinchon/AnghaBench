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
 scalar_t__ ENOTTY ; 
 scalar_t__ ENXIO ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6() {
	// Put the child into a new process group.
	if (FUNC3(0, 0) < 0) {
		FUNC1("setpgid failed: %s", FUNC4(errno));
		return 1;
	}

	// If there is a tty, allocate it to this new process group. We
	// can do this in the child process because we're blocking
	// SIGTTIN / SIGTTOU.

	// Doing it in the child process avoids a race condition scenario
	// if Tini is calling Tini (in which case the grandparent may make the
	// parent the foreground process group, and the actual child ends up...
	// in the background!)
	if (FUNC5(STDIN_FILENO, FUNC2())) {
		if (errno == ENOTTY) {
			FUNC0("tcsetpgrp failed: no tty (ok to proceed)");
		} else if (errno == ENXIO) {
			// can occur on lx-branded zones
			FUNC0("tcsetpgrp failed: no such device (ok to proceed)");
		} else {
			FUNC1("tcsetpgrp failed: %s", FUNC4(errno));
			return 1;
		}
	}

	return 0;
}