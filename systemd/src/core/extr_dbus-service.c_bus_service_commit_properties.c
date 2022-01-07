
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Unit ;


 int assert (int *) ;
 int unit_invalidate_cgroup_members_masks (int *) ;
 int unit_realize_cgroup (int *) ;

int bus_service_commit_properties(Unit *u) {
        assert(u);

        unit_invalidate_cgroup_members_masks(u);
        unit_realize_cgroup(u);

        return 0;
}
