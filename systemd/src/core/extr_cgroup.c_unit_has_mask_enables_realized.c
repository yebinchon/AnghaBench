
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cgroup_realized_mask; int cgroup_enabled_mask; scalar_t__ cgroup_realized; } ;
typedef TYPE_1__ Unit ;
typedef int CGroupMask ;


 int CGROUP_MASK_V1 ;
 int CGROUP_MASK_V2 ;
 int assert (TYPE_1__*) ;

__attribute__((used)) static bool unit_has_mask_enables_realized(
                Unit *u,
                CGroupMask target_mask,
                CGroupMask enable_mask) {

        assert(u);






        return u->cgroup_realized &&
                ((u->cgroup_realized_mask | target_mask) & CGROUP_MASK_V1) == (u->cgroup_realized_mask & CGROUP_MASK_V1) &&
                ((u->cgroup_enabled_mask | enable_mask) & CGROUP_MASK_V2) == (u->cgroup_enabled_mask & CGROUP_MASK_V2);
}
