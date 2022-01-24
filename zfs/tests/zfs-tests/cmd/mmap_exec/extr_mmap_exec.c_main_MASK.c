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
struct stat {int /*<<< orphan*/  st_size; } ;

/* Variables and functions */
 scalar_t__ MAP_FAILED ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  PROT_EXEC ; 
 int errno ; 
 scalar_t__ FUNC0 (int,struct stat*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

int
FUNC5(int argc, char *argv[])
{
	int error, fd;
	struct stat statbuf;

	if (argc != 2) {
		(void) FUNC4("Error: missing binary name.\n");
		(void) FUNC4("Usage:\n\t%s <binary name>\n",
		    argv[0]);
		return (1);
	}

	errno = 0;

	if ((fd = FUNC2(argv[1], O_RDONLY)) < 0) {
		error = errno;
		FUNC3("open");
		return (error);
	}
	if (FUNC0(fd, &statbuf) < 0) {
		error = errno;
		FUNC3("fstat");
		return (error);
	}

	if (FUNC1(0, statbuf.st_size,
	    PROT_EXEC, MAP_SHARED, fd, 0) == MAP_FAILED) {
		error = errno;
		FUNC3("mmap");
		return (error);
	}

	return (0);
}