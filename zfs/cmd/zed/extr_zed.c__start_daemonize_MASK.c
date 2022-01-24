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
struct sigaction {int /*<<< orphan*/  sa_handler; scalar_t__ sa_flags; int /*<<< orphan*/  sa_mask; } ;
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static void
FUNC11(void)
{
	pid_t pid;
	struct sigaction sa;

	/* Create pipe for communicating with child during daemonization. */
	FUNC9();

	/* Background process and ensure child is not process group leader. */
	pid = FUNC1();
	if (pid < 0) {
		FUNC6("Failed to create child process: %s",
		    FUNC5(errno));
	} else if (pid > 0) {

		/* Close writes since parent will only read from pipe. */
		FUNC8();

		/* Wait for notification that daemonization is complete. */
		FUNC10();

		FUNC7();
		FUNC0(EXIT_SUCCESS);
	}

	/* Close reads since child will only write to pipe. */
	FUNC7();

	/* Create independent session and detach from terminal. */
	if (FUNC2() < 0)
		FUNC6("Failed to create new session: %s",
		    FUNC5(errno));

	/* Prevent child from terminating on HUP when session leader exits. */
	if (FUNC4(&sa.sa_mask) < 0)
		FUNC6("Failed to initialize sigset");

	sa.sa_flags = 0;
	sa.sa_handler = SIG_IGN;

	if (FUNC3(SIGHUP, &sa, NULL) < 0)
		FUNC6("Failed to ignore SIGHUP");

	/* Ensure process cannot re-acquire terminal. */
	pid = FUNC1();
	if (pid < 0) {
		FUNC6("Failed to create grandchild process: %s",
		    FUNC5(errno));
	} else if (pid > 0) {
		FUNC0(EXIT_SUCCESS);
	}
}