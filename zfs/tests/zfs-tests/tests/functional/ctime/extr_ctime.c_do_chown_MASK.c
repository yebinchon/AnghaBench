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
 int FUNC0 (char const*,scalar_t__,scalar_t__) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,int,int,int) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int
FUNC4(const char *pfile)
{
	int ret = 0;

	if (pfile == NULL) {
		return (-1);
	}

	if (FUNC0(pfile, FUNC3(), FUNC2()) == -1) {
		(void) FUNC1(stderr, "chown(%s, %d, %d) failed with errno "
		    "%d\n", pfile, (int)FUNC3(), (int)FUNC2(), errno);
		return (1);
	}

	return (ret);
}