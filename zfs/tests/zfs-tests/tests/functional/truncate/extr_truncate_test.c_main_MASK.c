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
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  filename ; 
 int /*<<< orphan*/  fsize ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ ftruncflag ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char**) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC6(int argc, char *argv[])
{
	int fd;

	FUNC3(argc, argv);

	if (ftruncflag) {
		fd = FUNC2(filename, O_RDWR|O_CREAT, 0666);
		if (fd < 0) {
			FUNC4("open");
			return (1);
		}
		if (FUNC1(fd, fsize) < 0) {
			FUNC4("ftruncate");
			return (1);
		}
		if (FUNC0(fd)) {
			FUNC4("close");
			return (1);
		}
	} else {
		if (FUNC5(filename, fsize) < 0) {
			FUNC4("truncate");
			return (1);
		}
	}
	return (0);
}