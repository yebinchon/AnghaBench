
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cgroup_enabled_mask; int cgroup_realized_mask; int cgroup_realized; } ;
typedef TYPE_1__ Unit ;
typedef int CGroupMask ;


 int CGROUP_MASK_V1 ;
 int CGROUP_MASK_V2 ;
 scalar_t__ FLAGS_SET (int ,int) ;
 int assert (TYPE_1__*) ;

__attribute__((used)) static bool unit_has_mask_disables_realized(
                Unit *u,
                CGroupMask target_mask,
                CGroupMask enable_mask) {

        assert(u);






        return !u->cgroup_realized ||
                (FLAGS_SET(u->cgroup_realized_mask, target_mask & CGROUP_MASK_V1) &&
                 FLAGS_SET(u->cgroup_enabled_mask, enable_mask & CGROUP_MASK_V2));
}
