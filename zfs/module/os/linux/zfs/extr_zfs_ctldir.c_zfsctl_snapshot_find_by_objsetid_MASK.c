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
struct TYPE_6__ {int /*<<< orphan*/  se_objsetid; int /*<<< orphan*/ * se_spa; } ;
typedef  TYPE_1__ zfs_snapentry_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  spa_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zfs_snapshot_lock ; 
 int /*<<< orphan*/  zfs_snapshots_by_objsetid ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static zfs_snapentry_t *
FUNC4(spa_t *spa, uint64_t objsetid)
{
	zfs_snapentry_t *se, search;

	FUNC0(FUNC1(&zfs_snapshot_lock));

	search.se_spa = spa;
	search.se_objsetid = objsetid;
	se = FUNC2(&zfs_snapshots_by_objsetid, &search, NULL);
	if (se)
		FUNC3(se);

	return (se);
}