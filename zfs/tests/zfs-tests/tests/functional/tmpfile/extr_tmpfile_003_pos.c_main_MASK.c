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
struct stat {int dummy; } ;
typedef  int /*<<< orphan*/  penv ;

/* Variables and functions */
 int /*<<< orphan*/  AT_FDCWD ; 
 int /*<<< orphan*/  AT_SYMLINK_FOLLOW ; 
 int O_EXCL ; 
 int O_RDWR ; 
 int O_TMPFILE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,...) ; 
 scalar_t__ FUNC8 (char*,struct stat*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 

int
FUNC9(int argc, char *argv[])
{
	int i, fd;
	char spath[1024], dpath[1024];
	char *penv[] = {"TESTDIR", "TESTFILE0"};
	struct stat sbuf;

	(void) FUNC2(stdout, "Verify O_EXCL tmpfile cannot be linked.\n");

	/*
	 * Get the environment variable values.
	 */
	for (i = 0; i < sizeof (penv) / sizeof (char *); i++) {
		if ((penv[i] = FUNC3(penv[i])) == NULL) {
			(void) FUNC2(stderr, "getenv(penv[%d])\n", i);
			FUNC1(1);
		}
	}

	fd = FUNC5(penv[0], O_RDWR|O_TMPFILE|O_EXCL, 0666);
	if (fd < 0) {
		FUNC6("open");
		FUNC1(2);
	}

	FUNC7(spath, 1024, "/proc/self/fd/%d", fd);
	FUNC7(dpath, 1024, "%s/%s", penv[0], penv[1]);
	if (FUNC4(AT_FDCWD, spath, AT_FDCWD, dpath, AT_SYMLINK_FOLLOW) == 0) {
		FUNC2(stderr, "linkat returns successfully\n");
		FUNC0(fd);
		FUNC1(3);
	}

	if (FUNC8(dpath, &sbuf) == 0) {
		FUNC2(stderr, "stat returns successfully\n");
		FUNC0(fd);
		FUNC1(4);
	}
	FUNC0(fd);

	return (0);
}