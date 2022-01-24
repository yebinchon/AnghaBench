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
struct TYPE_6__ {int cgroup_invalidated_mask; } ;
typedef  TYPE_1__ Unit ;
typedef  int CGroupMask ;

/* Variables and functions */
 int CGROUP_MASK_BLKIO ; 
 int CGROUP_MASK_CPU ; 
 int CGROUP_MASK_CPUACCT ; 
 int CGROUP_MASK_IO ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

void FUNC4(Unit *u, CGroupMask m) {
        FUNC2(u);

        if (!FUNC1(u))
                return;

        if (m == 0)
                return;

        /* always invalidate compat pairs together */
        if (m & (CGROUP_MASK_IO | CGROUP_MASK_BLKIO))
                m |= CGROUP_MASK_IO | CGROUP_MASK_BLKIO;

        if (m & (CGROUP_MASK_CPU | CGROUP_MASK_CPUACCT))
                m |= CGROUP_MASK_CPU | CGROUP_MASK_CPUACCT;

        if (FUNC0(u->cgroup_invalidated_mask, m)) /* NOP? */
                return;

        u->cgroup_invalidated_mask |= m;
        FUNC3(u);
}