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
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int EXEC_FAILED ; 
 int FORK_FAILED ; 
 int TASK_SUCCESS ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char* const*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int*) ; 

__attribute__((used)) static int FUNC7(const char *taskname, char * const argv[], int *exit_status)
{
	pid_t pid;
	int status;

	switch (pid = FUNC4()) {
		case -1: /* Failed to fork */
			FUNC5("fork");
			return FORK_FAILED; /* Failed to fork. */
		case 0: /* Child process */
			FUNC2(taskname, argv);
			FUNC3(42); /* Failed to run task. */
		default: /* Parent process */
			FUNC6(&status); /* Block execution until finished. */

			if (!FUNC1(status) || (status = FUNC0(status)) == 42) {
				return EXEC_FAILED; /* Task failed to run. */
			}
			if (exit_status != NULL) *exit_status = status;
			return TASK_SUCCESS; /* Success! */
	}
}