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
 int /*<<< orphan*/  ECHILD ; 
 int /*<<< orphan*/  WAIT_ANY ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int WNOHANG ; 
 int WUNTRACED ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static void
FUNC7(void)
{
	int	 status;
	pid_t	 pid;

	for (;;) {
		switch (pid = FUNC6(WAIT_ANY, &status, WNOHANG|WUNTRACED)) {
		case -1:
			if (errno == ECHILD)
				return;
			FUNC3("waitpid failed");
		case 0:
			return;
		}
		if (FUNC2(status))
			FUNC5(pid, status);
		else if (FUNC0(status) || FUNC1(status))
			FUNC4(pid, status);
	}
}