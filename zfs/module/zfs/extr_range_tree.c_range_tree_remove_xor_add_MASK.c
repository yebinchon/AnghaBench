#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zfs_btree_index_t ;
struct TYPE_9__ {int /*<<< orphan*/  rt_root; } ;
typedef  TYPE_1__ range_tree_t ;
typedef  int /*<<< orphan*/  range_seg_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC5(range_tree_t *rt, range_tree_t *removefrom,
    range_tree_t *addto)
{
	zfs_btree_index_t where;
	for (range_seg_t *rs = FUNC3(&rt->rt_root, &where); rs;
	    rs = FUNC4(&rt->rt_root, &where, &where)) {
		FUNC0(FUNC2(rs, rt),
		    FUNC1(rs, rt), removefrom, addto);
	}
}