
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int sd_event_source ;
typedef int Manager ;


 int assert (int *) ;
 int log_debug (char*) ;
 int manager_kill_workers (int *) ;

__attribute__((used)) static int on_kill_workers_event(sd_event_source *s, uint64_t usec, void *userdata) {
        Manager *manager = userdata;

        assert(manager);

        log_debug("Cleanup idle workers");
        manager_kill_workers(manager);

        return 1;
}
