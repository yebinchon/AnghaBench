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
 int /*<<< orphan*/  ALL_MODE ; 
 int FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int
FUNC2(const char *pfile)
{
	int ret = 0;

	if (pfile == NULL) {
		return (-1);
	}

	if (FUNC0(pfile, ALL_MODE) == -1) {
		(void) FUNC1(stderr, "chmod(%s, ALL_MODE) failed with "
		    "errno %d\n", pfile, errno);
		return (1);
	}

	return (ret);
}