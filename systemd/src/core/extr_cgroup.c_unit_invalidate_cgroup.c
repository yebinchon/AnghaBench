
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int cgroup_invalidated_mask; } ;
typedef TYPE_1__ Unit ;
typedef int CGroupMask ;


 int CGROUP_MASK_BLKIO ;
 int CGROUP_MASK_CPU ;
 int CGROUP_MASK_CPUACCT ;
 int CGROUP_MASK_IO ;
 scalar_t__ FLAGS_SET (int,int) ;
 int UNIT_HAS_CGROUP_CONTEXT (TYPE_1__*) ;
 int assert (TYPE_1__*) ;
 int unit_add_to_cgroup_realize_queue (TYPE_1__*) ;

void unit_invalidate_cgroup(Unit *u, CGroupMask m) {
        assert(u);

        if (!UNIT_HAS_CGROUP_CONTEXT(u))
                return;

        if (m == 0)
                return;


        if (m & (CGROUP_MASK_IO | CGROUP_MASK_BLKIO))
                m |= CGROUP_MASK_IO | CGROUP_MASK_BLKIO;

        if (m & (CGROUP_MASK_CPU | CGROUP_MASK_CPUACCT))
                m |= CGROUP_MASK_CPU | CGROUP_MASK_CPUACCT;

        if (FLAGS_SET(u->cgroup_invalidated_mask, m))
                return;

        u->cgroup_invalidated_mask |= m;
        unit_add_to_cgroup_realize_queue(u);
}
