
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int cgroup_members_mask_valid; int slice; } ;
typedef TYPE_1__ Unit ;


 TYPE_1__* UNIT_DEREF (int ) ;
 scalar_t__ UNIT_ISSET (int ) ;
 int assert (TYPE_1__*) ;

void unit_invalidate_cgroup_members_masks(Unit *u) {
        assert(u);


        u->cgroup_members_mask_valid = 0;

        if (UNIT_ISSET(u->slice))
                unit_invalidate_cgroup_members_masks(UNIT_DEREF(u->slice));
}
