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
typedef  int /*<<< orphan*/  tsd_t ;
typedef  int /*<<< orphan*/  arena_t ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,unsigned int,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(tsd_t *tsd, const size_t *mib, size_t miblen,
    void *oldp, size_t *oldlenp, void *newp, size_t newlen, unsigned *arena_ind,
    arena_t **arena) {
	int ret;

	FUNC1();
	FUNC2();
	FUNC0(*arena_ind, 1);

	*arena = FUNC3(FUNC5(tsd), *arena_ind, false);
	if (*arena == NULL || FUNC4(*arena)) {
		ret = EFAULT;
		goto label_return;
	}

	ret = 0;
label_return:
	return ret;
}