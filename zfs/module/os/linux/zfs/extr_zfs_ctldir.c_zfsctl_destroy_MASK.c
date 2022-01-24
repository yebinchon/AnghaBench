#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * z_ctldir; TYPE_3__* z_os; scalar_t__ z_issnap; } ;
typedef  TYPE_1__ zfsvfs_t ;
typedef  int /*<<< orphan*/  zfs_snapentry_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  spa_t ;
struct TYPE_5__ {int /*<<< orphan*/ * os_spa; } ;

/* Variables and functions */
 int /*<<< orphan*/  RW_WRITER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zfs_snapshot_lock ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void
FUNC8(zfsvfs_t *zfsvfs)
{
	if (zfsvfs->z_issnap) {
		zfs_snapentry_t *se;
		spa_t *spa = zfsvfs->z_os->os_spa;
		uint64_t objsetid = FUNC0(zfsvfs->z_os);

		FUNC2(&zfs_snapshot_lock, RW_WRITER);
		se = FUNC4(spa, objsetid);
		if (se != NULL)
			FUNC6(se);
		FUNC3(&zfs_snapshot_lock);
		if (se != NULL) {
			FUNC7(se);
			FUNC5(se);
		}
	} else if (zfsvfs->z_ctldir) {
		FUNC1(zfsvfs->z_ctldir);
		zfsvfs->z_ctldir = NULL;
	}
}