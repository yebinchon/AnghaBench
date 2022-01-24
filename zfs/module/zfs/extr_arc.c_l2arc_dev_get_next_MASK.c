#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  l2ad_spa; int /*<<< orphan*/  l2ad_vdev; } ;
typedef  TYPE_1__ l2arc_dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  RW_READER ; 
 int /*<<< orphan*/  SCL_L2ARC ; 
 TYPE_1__* l2arc_dev_last ; 
 int /*<<< orphan*/  l2arc_dev_list ; 
 int /*<<< orphan*/  l2arc_dev_mtx ; 
 scalar_t__ l2arc_ndev ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  spa_namespace_lock ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static l2arc_dev_t *
FUNC6(void)
{
	l2arc_dev_t *first, *next = NULL;

	/*
	 * Lock out the removal of spas (spa_namespace_lock), then removal
	 * of cache devices (l2arc_dev_mtx).  Once a device has been selected,
	 * both locks will be dropped and a spa config lock held instead.
	 */
	FUNC2(&spa_namespace_lock);
	FUNC2(&l2arc_dev_mtx);

	/* if there are no vdevs, there is nothing to do */
	if (l2arc_ndev == 0)
		goto out;

	first = NULL;
	next = l2arc_dev_last;
	do {
		/* loop around the list looking for a non-faulted vdev */
		if (next == NULL) {
			next = FUNC0(l2arc_dev_list);
		} else {
			next = FUNC1(l2arc_dev_list, next);
			if (next == NULL)
				next = FUNC0(l2arc_dev_list);
		}

		/* if we have come back to the start, bail out */
		if (first == NULL)
			first = next;
		else if (next == first)
			break;

	} while (FUNC5(next->l2ad_vdev));

	/* if we were unable to find any usable vdevs, return NULL */
	if (FUNC5(next->l2ad_vdev))
		next = NULL;

	l2arc_dev_last = next;

out:
	FUNC3(&l2arc_dev_mtx);

	/*
	 * Grab the config lock to prevent the 'next' device from being
	 * removed while we are writing to it.
	 */
	if (next != NULL)
		FUNC4(next->l2ad_spa, SCL_L2ARC, next, RW_READER);
	FUNC3(&spa_namespace_lock);

	return (next);
}