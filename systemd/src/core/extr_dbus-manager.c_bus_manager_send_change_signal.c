
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Manager ;


 int assert (int *) ;
 int bus_foreach_bus (int *,int *,int ,int *) ;
 int log_debug_errno (int,char*) ;
 int send_changed_signal ;

void bus_manager_send_change_signal(Manager *m) {
        int r;

        assert(m);

        r = bus_foreach_bus(m, ((void*)0), send_changed_signal, ((void*)0));
        if (r < 0)
                log_debug_errno(r, "Failed to send manager change signal: %m");
}
