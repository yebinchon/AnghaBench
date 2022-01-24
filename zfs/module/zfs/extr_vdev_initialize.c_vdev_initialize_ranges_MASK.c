#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zfs_btree_t ;
typedef  int /*<<< orphan*/  zfs_btree_index_t ;
struct TYPE_7__ {TYPE_2__* vdev_initialize_tree; } ;
typedef  TYPE_1__ vdev_t ;
typedef  int uint64_t ;
struct TYPE_8__ {int /*<<< orphan*/  rt_root; } ;
typedef  TYPE_2__ range_tree_t ;
typedef  int /*<<< orphan*/  range_seg_t ;
typedef  int /*<<< orphan*/  abd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int VDEV_LABEL_START_SIZE ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int zfs_initialize_chunk_size ; 

__attribute__((used)) static int
FUNC6(vdev_t *vd, abd_t *data)
{
	range_tree_t *rt = vd->vdev_initialize_tree;
	zfs_btree_t *bt = &rt->rt_root;
	zfs_btree_index_t where;

	for (range_seg_t *rs = FUNC4(bt, &where); rs != NULL;
	    rs = FUNC5(bt, &where, &where)) {
		uint64_t size = FUNC1(rs, rt) - FUNC2(rs, rt);

		/* Split range into legally-sized physical chunks */
		uint64_t writes_required =
		    ((size - 1) / zfs_initialize_chunk_size) + 1;

		for (uint64_t w = 0; w < writes_required; w++) {
			int error;

			error = FUNC3(vd,
			    VDEV_LABEL_START_SIZE + FUNC2(rs, rt) +
			    (w * zfs_initialize_chunk_size),
			    FUNC0(size - (w * zfs_initialize_chunk_size),
			    zfs_initialize_chunk_size), data);
			if (error != 0)
				return (error);
		}
	}
	return (0);
}