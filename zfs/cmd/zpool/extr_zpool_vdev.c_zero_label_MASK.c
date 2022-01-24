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
 int O_EXCL ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int const) ; 
 int FUNC5 (char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int,char*,int const) ; 

__attribute__((used)) static int
FUNC8(char *path)
{
	const int size = 4096;
	char buf[size];
	int err, fd;

	if ((fd = FUNC5(path, O_WRONLY|O_EXCL)) < 0) {
		(void) FUNC2(stderr, FUNC3("cannot open '%s': %s\n"),
		    path, FUNC6(errno));
		return (-1);
	}

	FUNC4(buf, 0, size);
	err = FUNC7(fd, buf, size);
	(void) FUNC1(fd);
	(void) FUNC0(fd);

	if (err == -1) {
		(void) FUNC2(stderr, FUNC3("cannot zero first %d bytes "
		    "of '%s': %s\n"), size, path, FUNC6(errno));
		return (-1);
	}

	if (err != size) {
		(void) FUNC2(stderr, FUNC3("could only zero %d/%d bytes "
		    "of '%s'\n"), err, size, path);
		return (-1);
	}

	return (0);
}