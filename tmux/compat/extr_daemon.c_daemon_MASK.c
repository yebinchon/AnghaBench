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
 int /*<<< orphan*/  STDERR_FILENO ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  _PATH_DEVNULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 () ; 

int
FUNC8(int nochdir, int noclose)
{
	int fd;

	switch (FUNC5()) {
	case -1:
		return (-1);
	case 0:
		break;
	default:
		FUNC0(0);
	}

	if (FUNC7() == -1)
		return (-1);

	if (!nochdir)
		(void)FUNC1("/");

	if (!noclose && (fd = FUNC6(_PATH_DEVNULL, O_RDWR, 0)) != -1) {
		(void)FUNC4(fd, STDIN_FILENO);
		(void)FUNC4(fd, STDOUT_FILENO);
		(void)FUNC4(fd, STDERR_FILENO);
		if (fd > 2)
			(void)FUNC2 (fd);
	}

#ifdef __APPLE__
	daemon_darwin();
#endif
	return (0);
}