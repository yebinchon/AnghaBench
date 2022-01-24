#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zfs_btree_t ;
typedef  int /*<<< orphan*/  zfs_btree_index_t ;
struct TYPE_7__ {int /*<<< orphan*/ * vdev_spa; } ;
typedef  TYPE_1__ vdev_t ;
typedef  int uint64_t ;
struct TYPE_8__ {int trim_extent_bytes_max; int trim_extent_bytes_min; TYPE_5__* trim_tree; int /*<<< orphan*/  trim_type; scalar_t__ trim_bytes_done; int /*<<< orphan*/  trim_start_time; TYPE_1__* trim_vdev; } ;
typedef  TYPE_2__ trim_args_t ;
typedef  int /*<<< orphan*/  spa_t ;
typedef  int /*<<< orphan*/  range_seg_t ;
struct TYPE_9__ {int /*<<< orphan*/  rt_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int VDEV_LABEL_START_SIZE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(trim_args_t *ta)
{
	vdev_t *vd = ta->trim_vdev;
	zfs_btree_t *t = &ta->trim_tree->rt_root;
	zfs_btree_index_t idx;
	uint64_t extent_bytes_max = ta->trim_extent_bytes_max;
	uint64_t extent_bytes_min = ta->trim_extent_bytes_min;
	spa_t *spa = vd->vdev_spa;

	ta->trim_start_time = FUNC1();
	ta->trim_bytes_done = 0;

	for (range_seg_t *rs = FUNC6(t, &idx); rs != NULL;
	    rs = FUNC7(t, &idx, &idx)) {
		uint64_t size = FUNC2(rs, ta->trim_tree) - FUNC3(rs,
		    ta->trim_tree);

		if (extent_bytes_min && size < extent_bytes_min) {
			FUNC4(spa, ta->trim_type,
			    0, 0, 1, size, 0, 0);
			continue;
		}

		/* Split range into legally-sized physical chunks */
		uint64_t writes_required = ((size - 1) / extent_bytes_max) + 1;

		for (uint64_t w = 0; w < writes_required; w++) {
			int error;

			error = FUNC5(ta, VDEV_LABEL_START_SIZE +
			    FUNC3(rs, ta->trim_tree) +
			    (w *extent_bytes_max), FUNC0(size -
			    (w * extent_bytes_max), extent_bytes_max));
			if (error != 0) {
				return (error);
			}
		}
	}

	return (0);
}