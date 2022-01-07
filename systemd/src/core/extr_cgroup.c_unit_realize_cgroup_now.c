
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ cgroup_invalidated_mask; int slice; } ;
typedef TYPE_1__ Unit ;
typedef int ManagerState ;
typedef int CGroupMask ;


 int UNIT_DEREF (int ) ;
 scalar_t__ UNIT_ISSET (int ) ;
 int assert (TYPE_1__*) ;
 int unit_create_cgroup (TYPE_1__*,int ,int ,int ) ;
 int unit_get_enable_mask (TYPE_1__*) ;
 int unit_get_target_mask (TYPE_1__*) ;
 scalar_t__ unit_has_mask_realized (TYPE_1__*,int ,int ) ;
 int unit_realize_cgroup_now_disable (TYPE_1__*,int ) ;
 int unit_realize_cgroup_now_enable (int ,int ) ;
 int unit_remove_from_cgroup_realize_queue (TYPE_1__*) ;

__attribute__((used)) static int unit_realize_cgroup_now(Unit *u, ManagerState state) {
        CGroupMask target_mask, enable_mask;
        int r;

        assert(u);

        unit_remove_from_cgroup_realize_queue(u);

        target_mask = unit_get_target_mask(u);
        enable_mask = unit_get_enable_mask(u);

        if (unit_has_mask_realized(u, target_mask, enable_mask))
                return 0;


        r = unit_realize_cgroup_now_disable(u, state);
        if (r < 0)
                return r;


        if (UNIT_ISSET(u->slice)) {
                r = unit_realize_cgroup_now_enable(UNIT_DEREF(u->slice), state);
                if (r < 0)
                        return r;
        }


        r = unit_create_cgroup(u, target_mask, enable_mask, state);
        if (r < 0)
                return r;


        u->cgroup_invalidated_mask = 0;
        return 0;
}
