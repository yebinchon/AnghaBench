#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  zc_name; } ;
typedef  TYPE_1__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  cred_t ;

/* Variables and functions */
 int /*<<< orphan*/  ZFS_DELEG_PERM_DIFF ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(zfs_cmd_t *zc, nvlist_t *innvl, cred_t *cr)
{
	/*
	 * A temporary snapshot is the same as a snapshot,
	 * hold, destroy and release all rolled into one.
	 * Delegated diff alone is sufficient that we allow this.
	 */
	int error;

	if ((error = FUNC4(zc->zc_name,
	    ZFS_DELEG_PERM_DIFF, cr)) == 0)
		return (0);

	error = FUNC3(zc->zc_name, cr);

	if (innvl != NULL) {
		if (error == 0)
			error = FUNC1(zc, innvl, cr);
		if (error == 0)
			error = FUNC2(zc, innvl, cr);
		if (error == 0)
			error = FUNC0(zc, innvl, cr);
	}
	return (error);
}