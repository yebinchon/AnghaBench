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
 scalar_t__ EAGAIN ; 
 scalar_t__ EINTR ; 
 int LOCK_EX ; 
 int LOCK_NB ; 
 int O_CREAT ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ errno ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static int
FUNC5(char *lockfile)
{
	int lockfd;

	FUNC2("lock file is %s", lockfile);

	if ((lockfd = FUNC3(lockfile, O_WRONLY|O_CREAT, 0600)) == -1) {
		FUNC2("open failed: %s", FUNC4(errno));
		return (-1);
	}

	if (FUNC1(lockfd, LOCK_EX|LOCK_NB) == -1) {
		FUNC2("flock failed: %s", FUNC4(errno));
		if (errno != EAGAIN)
			return (lockfd);
		while (FUNC1(lockfd, LOCK_EX) == -1 && errno == EINTR)
			/* nothing */;
		FUNC0(lockfd);
		return (-2);
	}
	FUNC2("flock succeeded");

	return (lockfd);
}