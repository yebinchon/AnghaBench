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
 int O_RDWR ; 
 int O_TMPFILE ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,...) ; 
 scalar_t__ FUNC9 (char*,struct stat*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

int
FUNC12(int argc, char *argv[])
{
	int i, fd, ret;
	char spath[1024], dpath[1024];
	char *penv[] = {"TESTDIR", "TESTFILE0"};
	struct stat sbuf;

	(void) FUNC3(stdout, "Verify O_TMPFILE file can be linked.\n");

	/*
	 * Get the environment variable values.
	 */
	for (i = 0; i < sizeof (penv) / sizeof (char *); i++) {
		if ((penv[i] = FUNC4(penv[i])) == NULL) {
			(void) FUNC3(stderr, "getenv(penv[%d])\n", i);
			FUNC2(1);
		}
	}

	fd = FUNC6(penv[0], O_RDWR|O_TMPFILE, 0666);
	if (fd < 0) {
		FUNC7("open");
		FUNC2(2);
	}

	FUNC8(spath, 1024, "/proc/self/fd/%d", fd);
	FUNC8(dpath, 1024, "%s/%s", penv[0], penv[1]);
	if (FUNC5(AT_FDCWD, spath, AT_FDCWD, dpath, AT_SYMLINK_FOLLOW) < 0) {
		FUNC7("linkat");
		FUNC1(fd);
		FUNC2(3);
	}

	if ((ret = FUNC10("sudo zpool freeze $TESTPOOL"))) {
		if (ret == -1)
			FUNC7("system \"zpool freeze\"");
		else
			FUNC3(stderr, "zpool freeze exits with %d\n",
			    FUNC0(ret));
		FUNC2(4);
	}

	FUNC1(fd);

	if ((ret = FUNC10("sudo zpool export $TESTPOOL"))) {
		if (ret == -1)
			FUNC7("system \"zpool export\"");
		else
			FUNC3(stderr, "zpool export exits with %d\n",
			    FUNC0(ret));
		FUNC2(4);
	}

	if ((ret = FUNC10("sudo zpool import $TESTPOOL"))) {
		if (ret == -1)
			FUNC7("system \"zpool import\"");
		else
			FUNC3(stderr, "zpool import exits with %d\n",
			    FUNC0(ret));
		FUNC2(4);
	}

	if (FUNC9(dpath, &sbuf) < 0) {
		FUNC7("stat");
		FUNC11(dpath);
		FUNC2(5);
	}
	FUNC11(dpath);

	return (0);
}