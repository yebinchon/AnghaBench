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
 int /*<<< orphan*/  B_FALSE ; 
 int ZFS_ITER_DEPTH_LIMIT ; 
 int ZFS_ITER_RECURSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC1 (char*) ; 
 char* optarg ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC2 (char*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(char *opt, int *flags)
{
	char *tmp;
	int depth;

	depth = (int)FUNC2(opt, &tmp, 0);
	if (*tmp) {
		(void) FUNC0(stderr,
		    FUNC1("%s is not an integer\n"), optarg);
		FUNC3(B_FALSE);
	}
	if (depth < 0) {
		(void) FUNC0(stderr,
		    "%s", FUNC1("Depth can not be negative.\n"));
		FUNC3(B_FALSE);
	}
	*flags |= (ZFS_ITER_DEPTH_LIMIT|ZFS_ITER_RECURSE);
	return (depth);
}