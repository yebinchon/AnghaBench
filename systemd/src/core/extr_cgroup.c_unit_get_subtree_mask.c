
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Unit ;
typedef int CGroupMask ;


 int unit_get_members_mask (int *) ;
 int unit_get_own_mask (int *) ;

CGroupMask unit_get_subtree_mask(Unit *u) {




        return unit_get_own_mask(u) | unit_get_members_mask(u);
}
