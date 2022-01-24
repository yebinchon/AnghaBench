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
 int /*<<< orphan*/  O_RDWR ; 
 int STDERR_FILENO ; 
 int STDIN_FILENO ; 
 int STDOUT_FILENO ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void
FUNC6(void)
{
	int devnull;

	/* Preserve fd 0/1/2, but discard data to/from stdin/stdout/stderr. */
	devnull = FUNC2("/dev/null", O_RDWR);
	if (devnull < 0)
		FUNC4("Failed to open /dev/null: %s", FUNC3(errno));

	if (FUNC1(devnull, STDIN_FILENO) < 0)
		FUNC4("Failed to dup /dev/null onto stdin: %s",
		    FUNC3(errno));

	if (FUNC1(devnull, STDOUT_FILENO) < 0)
		FUNC4("Failed to dup /dev/null onto stdout: %s",
		    FUNC3(errno));

	if (FUNC1(devnull, STDERR_FILENO) < 0)
		FUNC4("Failed to dup /dev/null onto stderr: %s",
		    FUNC3(errno));

	if ((devnull > STDERR_FILENO) && (FUNC0(devnull) < 0))
		FUNC4("Failed to close /dev/null: %s", FUNC3(errno));

	/* Notify parent that daemonization is complete. */
	FUNC5();
}