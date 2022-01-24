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
typedef  int /*<<< orphan*/  zfs_btree_t ;
typedef  int /*<<< orphan*/  zfs_btree_index_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  range_tree_t ;
typedef  int /*<<< orphan*/  range_seg_t ;
typedef  int /*<<< orphan*/  range_seg_max_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static range_seg_t *
FUNC4(zfs_btree_t *t, range_tree_t *rt, uint64_t start,
    uint64_t size, zfs_btree_index_t *where)
{
	range_seg_t *rs;
	range_seg_max_t rsearch;

	FUNC1(&rsearch, rt, start);
	FUNC0(&rsearch, rt, start + size);

	rs = FUNC2(t, &rsearch, where);
	if (rs == NULL) {
		rs = FUNC3(t, where, where);
	}

	return (rs);
}