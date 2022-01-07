
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int slice; } ;
typedef TYPE_1__ Unit ;
typedef int CGroupMask ;


 int UNIT_DEREF (int ) ;
 scalar_t__ UNIT_ISSET (int ) ;
 int assert (TYPE_1__*) ;
 int unit_get_members_mask (int ) ;
 int unit_get_subtree_mask (TYPE_1__*) ;

CGroupMask unit_get_siblings_mask(Unit *u) {
        assert(u);





        if (UNIT_ISSET(u->slice))
                return unit_get_members_mask(UNIT_DEREF(u->slice));

        return unit_get_subtree_mask(u);
}
