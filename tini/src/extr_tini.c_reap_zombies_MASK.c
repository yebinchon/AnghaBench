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
typedef  int pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  ECHILD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 scalar_t__ STATUS_MAX ; 
 scalar_t__ STATUS_MIN ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  WNOHANG ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  expect_status ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  warn_on_reap ; 

int FUNC14(const pid_t child_pid, int* const child_exitcode_ptr) {
	pid_t current_pid;
	int current_status;

	while (1) {
		current_pid = FUNC13(-1, &current_status, WNOHANG);

		switch (current_pid) {

			case -1:
				if (errno == ECHILD) {
					FUNC5("No child to wait");
					break;
				}
				FUNC3("Error while waiting for pids: '%s'", FUNC11(errno));
				return 1;

			case 0:
				FUNC5("No child to reap");
				break;

			default:
				/* A child was reaped. Check whether it's the main one. If it is, then
				 * set the exit_code, which will cause us to exit once we've reaped everyone else.
				 */
				FUNC2("Reaped child with pid: '%i'", current_pid);
				if (current_pid == child_pid) {
					if (FUNC8(current_status)) {
						/* Our process exited normally. */
						FUNC4("Main child exited normally (with status '%i')", FUNC7(current_status));
						*child_exitcode_ptr = FUNC7(current_status);
					} else if (FUNC9(current_status)) {
						/* Our process was terminated. Emulate what sh / bash
						 * would do, which is to return 128 + signal number.
						 */
						FUNC4("Main child exited with signal (with signal '%s')", FUNC12(FUNC10(current_status)));
						*child_exitcode_ptr = 128 + FUNC10(current_status);
					} else {
						FUNC3("Main child exited for unknown reason");
						return 1;
					}

					// Be safe, ensure the status code is indeed between 0 and 255.
					*child_exitcode_ptr = *child_exitcode_ptr % (STATUS_MAX - STATUS_MIN + 1);

					// If this exitcode was remapped, then set it to 0.
					FUNC0(expect_status, *child_exitcode_ptr);
					if (FUNC1(expect_status, *child_exitcode_ptr)) {
						*child_exitcode_ptr = 0;
					}
				} else if (warn_on_reap > 0) {
					FUNC6("Reaped zombie process with pid=%i", current_pid);
				}

				// Check if other childs have been reaped.
				continue;
		}

		/* If we make it here, that's because we did not continue in the switch case. */
		break;
	}

	return 0;
}