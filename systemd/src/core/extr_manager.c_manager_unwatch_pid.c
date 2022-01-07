
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int pid_t ;
struct TYPE_4__ {int watch_pids; } ;
typedef TYPE_1__ Manager ;


 int PID_TO_PTR (int ) ;
 int assert (TYPE_1__*) ;
 int free (int ) ;
 int hashmap_remove (int ,int ) ;

void manager_unwatch_pid(Manager *m, pid_t pid) {
        assert(m);


        (void) hashmap_remove(m->watch_pids, PID_TO_PTR(pid));


        free(hashmap_remove(m->watch_pids, PID_TO_PTR(-pid)));
}
