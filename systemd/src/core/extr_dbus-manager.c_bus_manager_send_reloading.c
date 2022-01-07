
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Manager ;


 int INT_TO_PTR (int) ;
 int assert (int *) ;
 int bus_foreach_bus (int *,int *,int ,int ) ;
 int log_debug_errno (int,char*) ;
 int send_reloading ;

void bus_manager_send_reloading(Manager *m, bool active) {
        int r;

        assert(m);

        r = bus_foreach_bus(m, ((void*)0), send_reloading, INT_TO_PTR(active));
        if (r < 0)
                log_debug_errno(r, "Failed to send reloading signal: %m");
}
