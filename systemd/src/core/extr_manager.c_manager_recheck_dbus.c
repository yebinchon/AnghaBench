
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Manager ;


 scalar_t__ MANAGER_IS_RELOADING (int *) ;
 scalar_t__ MANAGER_IS_SYSTEM (int *) ;
 int assert (int *) ;
 int bus_done_api (int *) ;
 int bus_done_system (int *) ;
 int bus_init_api (int *) ;
 int bus_init_system (int *) ;
 scalar_t__ manager_dbus_is_running (int *,int) ;

void manager_recheck_dbus(Manager *m) {
        assert(m);






        if (MANAGER_IS_RELOADING(m))
                return;

        if (manager_dbus_is_running(m, 0)) {
                (void) bus_init_api(m);

                if (MANAGER_IS_SYSTEM(m))
                        (void) bus_init_system(m);
        } else {
                (void) bus_done_api(m);

                if (MANAGER_IS_SYSTEM(m))
                        (void) bus_done_system(m);
        }
}
