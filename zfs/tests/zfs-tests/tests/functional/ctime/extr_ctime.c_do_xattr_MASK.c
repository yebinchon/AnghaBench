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
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,int,int,int) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (char const*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int
FUNC5(const char *pfile)
{
	int ret = 0;
	char *value = "user.value";

	if (pfile == NULL) {
		return (-1);
	}

	if (FUNC3(pfile, "user.x", value, FUNC4(value), 0) == -1) {
		(void) FUNC0(stderr, "setxattr(%s, %d, %d) failed with errno "
		    "%d\n", pfile, (int)FUNC2(), (int)FUNC1(), errno);
		return (1);
	}
	return (ret);
}