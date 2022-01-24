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
 int O_TRUNC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int count ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  filename ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char**) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

int
FUNC7(int argc, char *argv[])
{
	int i = 0;
	int fd = -1;

	FUNC5(argc, argv);

	fd = FUNC4(filename, O_RDWR|O_CREAT|O_TRUNC, 0666);
	if (fd < 0) {
		FUNC6("open");
		FUNC3(3);
	}

	for (i = 0; count == 0 || i < count; i++) {
		(void) FUNC2(fd);
		(void) FUNC1(fd);
	}

	(void) FUNC0(fd);
	return (0);
}