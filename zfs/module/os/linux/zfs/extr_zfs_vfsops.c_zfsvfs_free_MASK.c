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
struct TYPE_5__ {int z_hold_size; int /*<<< orphan*/  z_kstat; int /*<<< orphan*/  z_vfs; int /*<<< orphan*/ * z_hold_locks; int /*<<< orphan*/ * z_hold_trees; int /*<<< orphan*/  z_fuid_lock; int /*<<< orphan*/  z_teardown_inactive_lock; int /*<<< orphan*/  z_teardown_lock; int /*<<< orphan*/  z_all_znodes; int /*<<< orphan*/  z_lock; int /*<<< orphan*/  z_znodes_lock; } ;
typedef  TYPE_1__ zfsvfs_t ;
typedef  int /*<<< orphan*/  kmutex_t ;
typedef  int /*<<< orphan*/  avl_tree_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

void
FUNC10(zfsvfs_t *zfsvfs)
{
	int i, size = zfsvfs->z_hold_size;

	FUNC8(zfsvfs);

	FUNC4(&zfsvfs->z_znodes_lock);
	FUNC4(&zfsvfs->z_lock);
	FUNC3(&zfsvfs->z_all_znodes);
	FUNC5(&zfsvfs->z_teardown_lock);
	FUNC6(&zfsvfs->z_teardown_inactive_lock);
	FUNC6(&zfsvfs->z_fuid_lock);
	for (i = 0; i != size; i++) {
		FUNC0(&zfsvfs->z_hold_trees[i]);
		FUNC4(&zfsvfs->z_hold_locks[i]);
	}
	FUNC7(zfsvfs->z_hold_trees, sizeof (avl_tree_t) * size);
	FUNC7(zfsvfs->z_hold_locks, sizeof (kmutex_t) * size);
	FUNC9(zfsvfs->z_vfs);
	FUNC1(&zfsvfs->z_kstat);
	FUNC2(zfsvfs, sizeof (zfsvfs_t));
}