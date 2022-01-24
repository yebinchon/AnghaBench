#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ vdev_mmp_pending; } ;
typedef  TYPE_2__ vdev_t ;
struct TYPE_12__ {scalar_t__ mmp_leaf_last_gen; TYPE_2__* mmp_last_leaf; int /*<<< orphan*/  mmp_io_lock; } ;
struct TYPE_15__ {int /*<<< orphan*/  list_head; } ;
struct TYPE_14__ {scalar_t__ spa_leaf_list_gen; TYPE_1__ spa_mmp; TYPE_8__ spa_leaf_list; } ;
typedef  TYPE_3__ spa_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ B_TRUE ; 
 int MMP_FAIL_NOT_WRITABLE ; 
 int MMP_FAIL_WRITE_PENDING ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RW_READER ; 
 int /*<<< orphan*/  SCL_STATE ; 
 void* FUNC2 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_8__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC5 (TYPE_8__*,TYPE_2__*) ; 
 int FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC8(spa_t *spa)
{
	vdev_t *leaf;
	vdev_t *starting_leaf;
	int fail_mask = 0;

	FUNC0(FUNC1(&spa->spa_mmp.mmp_io_lock));
	FUNC0(FUNC6(spa, SCL_STATE, RW_READER));
	FUNC0(FUNC4(&spa->spa_leaf_list.list_head) == B_TRUE);
	FUNC0(!FUNC3(&spa->spa_leaf_list));

	if (spa->spa_mmp.mmp_leaf_last_gen != spa->spa_leaf_list_gen) {
		spa->spa_mmp.mmp_last_leaf = FUNC2(&spa->spa_leaf_list);
		spa->spa_mmp.mmp_leaf_last_gen = spa->spa_leaf_list_gen;
	}

	leaf = spa->spa_mmp.mmp_last_leaf;
	if (leaf == NULL)
		leaf = FUNC2(&spa->spa_leaf_list);
	starting_leaf = leaf;

	do {
		leaf = FUNC5(&spa->spa_leaf_list, leaf);
		if (leaf == NULL)
			leaf = FUNC2(&spa->spa_leaf_list);

		if (!FUNC7(leaf)) {
			fail_mask |= MMP_FAIL_NOT_WRITABLE;
		} else if (leaf->vdev_mmp_pending != 0) {
			fail_mask |= MMP_FAIL_WRITE_PENDING;
		} else {
			spa->spa_mmp.mmp_last_leaf = leaf;
			return (0);
		}
	} while (leaf != starting_leaf);

	FUNC0(fail_mask);

	return (fail_mask);
}