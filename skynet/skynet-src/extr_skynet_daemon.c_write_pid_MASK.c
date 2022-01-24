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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int LOCK_EX ; 
 int LOCK_NB ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*,int*) ; 
 int FUNC7 () ; 
 int FUNC8 (char const*,int,int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int
FUNC9(const char *pidfile) {
	FILE *f;
	int pid = 0;
	int fd = FUNC8(pidfile, O_RDWR|O_CREAT, 0644);
	if (fd == -1) {
		FUNC5(stderr, "Can't create pidfile [%s].\n", pidfile);
		return 0;
	}
	f = FUNC2(fd, "w+");
	if (f == NULL) {
		FUNC5(stderr, "Can't open pidfile [%s].\n", pidfile);
		return 0;
	}

	if (FUNC4(fd, LOCK_EX|LOCK_NB) == -1) {
		int n = FUNC6(f, "%d", &pid);
		FUNC1(f);
		if (n != 1) {
			FUNC5(stderr, "Can't lock and read pidfile.\n");
		} else {
			FUNC5(stderr, "Can't lock pidfile, lock is held by pid %d.\n", pid);
		}
		return 0;
	}

	pid = FUNC7();
	if (!FUNC5(*f,"%d\n", pid)) {
		FUNC5(stderr, "Can't write pid.\n");
		FUNC0(fd);
		return 0;
	}
	FUNC3(f);

	return pid;
}