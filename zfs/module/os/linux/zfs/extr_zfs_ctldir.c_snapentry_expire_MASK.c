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
struct TYPE_5__ {int /*<<< orphan*/  se_name; int /*<<< orphan*/  se_taskqid; int /*<<< orphan*/  se_objsetid; int /*<<< orphan*/ * se_spa; } ;
typedef  TYPE_1__ zfs_snapentry_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  spa_t ;

/* Variables and functions */
 int /*<<< orphan*/  MNT_EXPIRE ; 
 int /*<<< orphan*/  RW_READER ; 
 int /*<<< orphan*/  TASKQID_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ zfs_expire_snapshot ; 
 int /*<<< orphan*/  zfs_snapshot_lock ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,scalar_t__) ; 

__attribute__((used)) static void
FUNC6(void *data)
{
	zfs_snapentry_t *se = (zfs_snapentry_t *)data;
	spa_t *spa = se->se_spa;
	uint64_t objsetid = se->se_objsetid;

	if (zfs_expire_snapshot <= 0) {
		FUNC3(se);
		return;
	}

	se->se_taskqid = TASKQID_INVALID;
	(void) FUNC4(se->se_name, MNT_EXPIRE);
	FUNC3(se);

	/*
	 * Reschedule the unmount if the zfs_snapentry_t wasn't removed.
	 * This can occur when the snapshot is busy.
	 */
	FUNC0(&zfs_snapshot_lock, RW_READER);
	if ((se = FUNC2(spa, objsetid)) != NULL) {
		FUNC5(se, zfs_expire_snapshot);
		FUNC3(se);
	}
	FUNC1(&zfs_snapshot_lock);
}