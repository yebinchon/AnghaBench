
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;
typedef int Unit ;


 int assert (int *) ;
 int unit_enqueue_rewatch_pids (int *) ;

__attribute__((used)) static void scope_sigchld_event(Unit *u, pid_t pid, int code, int status) {
        assert(u);





        (void) unit_enqueue_rewatch_pids(u);
}
