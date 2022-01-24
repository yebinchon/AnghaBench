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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  spa_t ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  RW_READER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zfs_snapshot_lock ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

int
FUNC6(spa_t *spa, uint64_t objsetid, int delay)
{
	zfs_snapentry_t *se;
	int error = ENOENT;

	FUNC0(&zfs_snapshot_lock, RW_READER);
	if ((se = FUNC2(spa, objsetid)) != NULL) {
		FUNC4(se);
		FUNC5(se, delay);
		FUNC3(se);
		error = 0;
	}
	FUNC1(&zfs_snapshot_lock);

	return (error);
}