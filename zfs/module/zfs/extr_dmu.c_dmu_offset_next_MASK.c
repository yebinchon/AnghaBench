#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
struct TYPE_5__ {int /*<<< orphan*/ * dn_dirty_link; } ;
typedef  TYPE_1__ dnode_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ B_FALSE ; 
 scalar_t__ B_TRUE ; 
 int /*<<< orphan*/  DNODE_FIND_HOLE ; 
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  FTAG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int TXG_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ zfs_dmu_offset_next_sync ; 

int
FUNC7(objset_t *os, uint64_t object, boolean_t hole, uint64_t *off)
{
	dnode_t *dn;
	int i, err;
	boolean_t clean = B_TRUE;

	err = FUNC2(os, object, FTAG, &dn);
	if (err)
		return (err);

	/*
	 * Check if dnode is dirty
	 */
	for (i = 0; i < TXG_SIZE; i++) {
		if (FUNC5(&dn->dn_dirty_link[i])) {
			clean = B_FALSE;
			break;
		}
	}

	/*
	 * If compatibility option is on, sync any current changes before
	 * we go trundling through the block pointers.
	 */
	if (!clean && zfs_dmu_offset_next_sync) {
		clean = B_TRUE;
		FUNC4(dn, FTAG);
		FUNC6(FUNC1(os), 0);
		err = FUNC2(os, object, FTAG, &dn);
		if (err)
			return (err);
	}

	if (clean)
		err = FUNC3(dn,
		    (hole ? DNODE_FIND_HOLE : 0), off, 1, 1, 0);
	else
		err = FUNC0(EBUSY);

	FUNC4(dn, FTAG);

	return (err);
}