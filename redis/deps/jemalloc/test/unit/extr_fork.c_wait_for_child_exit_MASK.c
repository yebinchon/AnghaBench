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
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 (int,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(int pid) {
	int status;
	while (true) {
		if (FUNC5(pid, &status, 0) == -1) {
			FUNC4("Unexpected waitpid() failure.");
		}
		if (FUNC2(status)) {
			FUNC4("Unexpected child termination due to "
			    "signal %d", FUNC3(status));
			break;
		}
		if (FUNC1(status)) {
			if (FUNC0(status) != 0) {
				FUNC4("Unexpected child exit value %d",
				    FUNC0(status));
			}
			break;
		}
	}
}