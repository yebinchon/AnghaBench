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
struct stat {int st_mode; } ;
typedef  int /*<<< orphan*/  penv ;
typedef  int mode_t ;
typedef  int /*<<< orphan*/  fpath ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDWR ; 
 int S_ISGID ; 
 int S_ISUID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC4 (char*) ; 
 int FUNC5 (char*,int) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,char*,char*) ; 
 int FUNC10 (char*,struct stat*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int FUNC13 (int,char*,int) ; 

__attribute__((used)) static void
FUNC14(mode_t extra)
{
	struct stat st;
	int i, fd;
	char fpath[1024];
	char *penv[] = {"TESTDIR", "TESTFILE0"};
	char buf[] = "test";
	mode_t res;
	mode_t mode = 0777 | extra;

	/*
	 * Get the environment variable values.
	 */
	for (i = 0; i < sizeof (penv) / sizeof (char *); i++) {
		if ((penv[i] = FUNC4(penv[i])) == NULL) {
			FUNC3(stderr, "getenv(penv[%d])\n", i);
			FUNC2(1);
		}
	}

	FUNC11(0);
	if (FUNC10(penv[0], &st) == -1 && FUNC5(penv[0], mode) == -1) {
		FUNC7("mkdir");
		FUNC2(2);
	}

	FUNC9(fpath, sizeof (fpath), "%s/%s", penv[0], penv[1]);
	FUNC12(fpath);
	if (FUNC10(fpath, &st) == 0) {
		FUNC3(stderr, "%s exists\n", fpath);
		FUNC2(3);
	}

	fd = FUNC1(fpath, mode);
	if (fd == -1) {
		FUNC7("creat");
		FUNC2(4);
	}
	FUNC0(fd);

	if (FUNC8(65534) == -1) {
		FUNC7("setuid");
		FUNC2(5);
	}

	fd = FUNC6(fpath, O_RDWR);
	if (fd == -1) {
		FUNC7("open");
		FUNC2(6);
	}

	if (FUNC13(fd, buf, sizeof (buf)) == -1) {
		FUNC7("write");
		FUNC2(7);
	}
	FUNC0(fd);

	if (FUNC10(fpath, &st) == -1) {
		FUNC7("stat");
		FUNC2(8);
	}
	FUNC12(fpath);

	/* Verify SUID/SGID are dropped */
	res = st.st_mode & (0777 | S_ISUID | S_ISGID);
	if (res != (mode & 0777)) {
		FUNC3(stderr, "stat(2) %o\n", res);
		FUNC2(9);
	}
}