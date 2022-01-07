
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* cgroup_path; int slice; int cgroup_realized_mask; scalar_t__ cgroup_realized; } ;
typedef TYPE_1__ Unit ;
typedef int CGroupMask ;


 scalar_t__ FLAGS_SET (int ,int ) ;
 TYPE_1__* UNIT_DEREF (int ) ;

const char *unit_get_realized_cgroup_path(Unit *u, CGroupMask mask) {



        while (u) {

                if (u->cgroup_path &&
                    u->cgroup_realized &&
                    FLAGS_SET(u->cgroup_realized_mask, mask))
                        return u->cgroup_path;

                u = UNIT_DEREF(u->slice);
        }

        return ((void*)0);
}
