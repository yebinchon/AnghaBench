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
 int O_CREAT ; 
 int O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int,char*,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC7 (int) ; 
 int FUNC8 (char*) ; 
 scalar_t__ FUNC9 (int) ; 
 int FUNC10 (int,char*,int) ; 

__attribute__((used)) static void
FUNC11(char *pname)
{
	int fd = -1;
	int i, size;
	char *context = "0123456789ABCDF";
	char *pbuf;

	if (pname == NULL) {
		FUNC1(1);
	}

	size = sizeof (char) * 1024;
	pbuf = (char *)FUNC9(size);
	for (i = 0; i < size / FUNC8(context); i++) {
		int offset = i * FUNC8(context);
		(void) FUNC6(pbuf+offset, size-offset, "%s", context);
	}

	if ((fd = FUNC5(pname, O_CREAT|O_RDWR, 0777)) < 0) {
		(void) FUNC2(stderr, "open(%s, O_CREAT|O_RDWR, 0777) failed."
		    "\n[%d]: %s.\n", pname, errno, FUNC7(errno));
		FUNC1(errno);
	}
	if (FUNC10(fd, pbuf, 1024) < 1024) {
		(void) FUNC2(stderr, "write(fd, pbuf, 1024) failed."
		    "\n[%d]: %s.\n", errno, FUNC7(errno));
		FUNC1(errno);
	}

	if (FUNC4(fd, "user.xattr", pbuf, 1024, 0) < 0) {
		(void) FUNC2(stderr, "fsetxattr(fd, \"xattr\", pbuf, "
		    "1024, 0) failed.\n[%d]: %s.\n", errno, FUNC7(errno));
		FUNC1(errno);
	}

	(void) FUNC0(fd);
	FUNC3(pbuf);
}