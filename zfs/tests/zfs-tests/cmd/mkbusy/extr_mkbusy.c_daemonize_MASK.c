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
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,long) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC6(void)
{
	pid_t	pid;

	if ((pid = FUNC3()) < 0) {
		FUNC2("fork", 1);
	} else if (pid != 0) {
		(void) FUNC4(stdout, "%ld\n", (long)pid);
		FUNC1(0);
	}

	(void) FUNC5();
	(void) FUNC0(0);
	(void) FUNC0(1);
	(void) FUNC0(2);
}