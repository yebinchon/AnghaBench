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
typedef  int /*<<< orphan*/  objset_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ B_FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

int
FUNC6(const char *dsname, void *arg)
{
	objset_t *os;

	if (FUNC2(dsname, FTAG, &os) == 0) {
		boolean_t need_destroy = FUNC0(FUNC1(os));

		/*
		 * If the dataset is inconsistent because a resumable receive
		 * has failed, then do not destroy it.
		 */
		if (FUNC4(FUNC1(os)))
			need_destroy = B_FALSE;

		FUNC3(os, FTAG);
		if (need_destroy)
			(void) FUNC5(dsname);
	}
	return (0);
}