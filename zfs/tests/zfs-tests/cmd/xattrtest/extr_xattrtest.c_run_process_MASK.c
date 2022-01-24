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
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  O_WRONLY ; 
 int /*<<< orphan*/  STDERR_FILENO ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC5 (char const*,char**) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 () ; 
 int FUNC8 (scalar_t__,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(const char *path, char *argv[])
{
	pid_t pid;
	int rc, devnull_fd;

	pid = FUNC7();
	if (pid == 0) {
		devnull_fd = FUNC6("/dev/null", O_WRONLY);

		if (devnull_fd < 0)
			FUNC2(-1);

		(void) FUNC4(devnull_fd, STDOUT_FILENO);
		(void) FUNC4(devnull_fd, STDERR_FILENO);
		FUNC3(devnull_fd);

		(void) FUNC5(path, argv);
		FUNC2(-1);
	} else if (pid > 0) {
		int status;

		while ((rc = FUNC8(pid, &status, 0)) == -1 &&
		    errno == EINTR) { }

		if (rc < 0 || !FUNC1(status))
			return (-1);

		return (FUNC0(status));
	}

	return (-1);
}