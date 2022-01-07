
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_3__ {int disable_controllers; } ;
typedef int CGroupMask ;
typedef TYPE_1__ CGroupContext ;


 TYPE_1__* unit_get_cgroup_context (int *) ;

CGroupMask unit_get_disable_mask(Unit *u) {
        CGroupContext *c;

        c = unit_get_cgroup_context(u);
        if (!c)
                return 0;

        return c->disable_controllers;
}
