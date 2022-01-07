
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int bus; int event; } ;
typedef TYPE_1__ Manager ;


 int DEFAULT_EXIT_USEC ;
 int assert (TYPE_1__*) ;
 int bus_event_loop_with_idle (int ,int ,char*,int ,int ,TYPE_1__*) ;
 int check_idle ;

__attribute__((used)) static int manager_run(Manager *m) {
        assert(m);

        return bus_event_loop_with_idle(
                        m->event,
                        m->bus,
                        "org.freedesktop.machine1",
                        DEFAULT_EXIT_USEC,
                        check_idle, m);
}
