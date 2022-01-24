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
typedef  int /*<<< orphan*/  zfs_snapentry_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zfs_snapshot_lock ; 
 int /*<<< orphan*/  zfs_snapshots_by_name ; 
 int /*<<< orphan*/  zfs_snapshots_by_objsetid ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(zfs_snapentry_t *se)
{
	FUNC0(FUNC1(&zfs_snapshot_lock));
	FUNC3(se);
	FUNC2(&zfs_snapshots_by_name, se);
	FUNC2(&zfs_snapshots_by_objsetid, se);
}