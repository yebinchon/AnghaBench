#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zfs_btree_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  range_seg_t ;
struct TYPE_3__ {int /*<<< orphan*/  ms_allocatable; int /*<<< orphan*/  ms_allocatable_by_size; } ;
typedef  TYPE_1__ metaslab_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

uint64_t
FUNC5(metaslab_t *msp)
{
	zfs_btree_t *t = &msp->ms_allocatable_by_size;
	range_seg_t *rs;

	if (t == NULL)
		return (0);
	if (FUNC4(t) == 0)
		FUNC0(msp->ms_allocatable);

	rs = FUNC3(t, NULL);
	if (rs == NULL)
		return (0);

	return (FUNC1(rs, msp->ms_allocatable) - FUNC2(rs,
	    msp->ms_allocatable));
}