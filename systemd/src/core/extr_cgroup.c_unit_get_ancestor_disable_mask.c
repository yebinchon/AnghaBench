
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int slice; } ;
typedef TYPE_1__ Unit ;
typedef int CGroupMask ;


 TYPE_1__* UNIT_DEREF (int ) ;
 scalar_t__ UNIT_ISSET (int ) ;
 int assert (TYPE_1__*) ;
 int unit_get_disable_mask (TYPE_1__*) ;

CGroupMask unit_get_ancestor_disable_mask(Unit *u) {
        CGroupMask mask;

        assert(u);
        mask = unit_get_disable_mask(u);




        if (UNIT_ISSET(u->slice))
                mask |= unit_get_ancestor_disable_mask(UNIT_DEREF(u->slice));

        return mask;
}
