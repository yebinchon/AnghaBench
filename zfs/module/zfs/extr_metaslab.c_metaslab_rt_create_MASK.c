#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zfs_btree_t ;
struct TYPE_4__ {int rt_type; } ;
typedef  TYPE_1__ range_tree_t ;
typedef  int /*<<< orphan*/  range_seg64_t ;
typedef  int /*<<< orphan*/  range_seg32_t ;
struct TYPE_5__ {int /*<<< orphan*/  mra_floor_shift; int /*<<< orphan*/ * mra_bt; } ;
typedef  TYPE_2__ metaslab_rt_arg_t ;

/* Variables and functions */
#define  RANGE_SEG32 129 
#define  RANGE_SEG64 128 
 int /*<<< orphan*/  metaslab_by_size_min_shift ; 
 int FUNC0 (void const*,void const*) ; 
 int FUNC1 (void const*,void const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int (*) (void const*,void const*),size_t) ; 

__attribute__((used)) static void
FUNC4(range_tree_t *rt, void *arg)
{
	metaslab_rt_arg_t *mrap = arg;
	zfs_btree_t *size_tree = mrap->mra_bt;

	size_t size;
	int (*compare) (const void *, const void *);
	switch (rt->rt_type) {
	case RANGE_SEG32:
		size = sizeof (range_seg32_t);
		compare = metaslab_rangesize32_compare;
		break;
	case RANGE_SEG64:
		size = sizeof (range_seg64_t);
		compare = metaslab_rangesize64_compare;
		break;
	default:
		FUNC2("Invalid range seg type %d", rt->rt_type);
	}
	FUNC3(size_tree, compare, size);
	mrap->mra_floor_shift = metaslab_by_size_min_shift;
}