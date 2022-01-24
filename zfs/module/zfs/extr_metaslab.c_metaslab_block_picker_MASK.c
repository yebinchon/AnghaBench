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
typedef  int /*<<< orphan*/  zfs_btree_t ;
typedef  int /*<<< orphan*/  zfs_btree_index_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_6__ {scalar_t__ rt_start; int /*<<< orphan*/  rt_root; } ;
typedef  TYPE_1__ range_tree_t ;
typedef  int /*<<< orphan*/  range_seg_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 int metaslab_min_search_count ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static uint64_t
FUNC4(range_tree_t *rt, uint64_t *cursor, uint64_t size,
    uint64_t max_search)
{
	if (*cursor == 0)
		*cursor = rt->rt_start;
	zfs_btree_t *bt = &rt->rt_root;
	zfs_btree_index_t where;
	range_seg_t *rs = FUNC0(bt, rt, *cursor, size, &where);
	uint64_t first_found;
	int count_searched = 0;

	if (rs != NULL)
		first_found = FUNC2(rs, rt);

	while (rs != NULL && (FUNC2(rs, rt) - first_found <=
	    max_search || count_searched < metaslab_min_search_count)) {
		uint64_t offset = FUNC2(rs, rt);
		if (offset + size <= FUNC1(rs, rt)) {
			*cursor = offset + size;
			return (offset);
		}
		rs = FUNC3(bt, &where, &where);
		count_searched++;
	}

	*cursor = 0;
	return (-1ULL);
}