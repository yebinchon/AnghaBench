
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int pid_t ;
typedef int **** Unit ;
struct TYPE_5__ {int watch_pids; int units; } ;
typedef TYPE_1__ Manager ;


 int PID_TO_PTR (int ) ;
 int SPECIAL_INIT_SCOPE ;
 int assert (TYPE_1__*) ;
 int getpid_cached () ;
 int ***** hashmap_get (int ,int ) ;
 int ***** manager_get_unit_by_pid_cgroup (TYPE_1__*,int ) ;
 int pid_is_valid (int ) ;

Unit *manager_get_unit_by_pid(Manager *m, pid_t pid) {
        Unit *u, **array;

        assert(m);





        if (!pid_is_valid(pid))
                return ((void*)0);

        if (pid == getpid_cached())
                return hashmap_get(m->units, SPECIAL_INIT_SCOPE);

        u = manager_get_unit_by_pid_cgroup(m, pid);
        if (u)
                return u;

        u = hashmap_get(m->watch_pids, PID_TO_PTR(pid));
        if (u)
                return u;

        array = hashmap_get(m->watch_pids, PID_TO_PTR(-pid));
        if (array)
                return array[0];

        return ((void*)0);
}
