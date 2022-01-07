
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Unit ;
typedef char const Manager ;


 int assert (char const*) ;
 int log_debug (char*,char const*) ;
 int * manager_get_unit_by_cgroup (char const*,char const*) ;
 int unit_add_to_cgroup_empty_queue (int *) ;

int manager_notify_cgroup_empty(Manager *m, const char *cgroup) {
        Unit *u;

        assert(m);
        assert(cgroup);




        log_debug("Got cgroup empty notification for: %s", cgroup);

        u = manager_get_unit_by_cgroup(m, cgroup);
        if (!u)
                return 0;

        unit_add_to_cgroup_empty_queue(u);
        return 1;
}
