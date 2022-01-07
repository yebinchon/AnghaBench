
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Manager ;


 int MANAGER_IS_RELOADING (int *) ;
 scalar_t__ MANAGER_IS_SYSTEM (int *) ;
 scalar_t__ MANAGER_IS_USER (int *) ;
 int assert (int *) ;
 int bus_init_api (int *) ;
 int bus_init_private (int *) ;
 int bus_init_system (int *) ;
 scalar_t__ manager_dbus_is_running (int *,int ) ;

__attribute__((used)) static void manager_setup_bus(Manager *m) {
        assert(m);


        (void) bus_init_private(m);


        if (MANAGER_IS_USER(m))
                (void) bus_init_system(m);


        if (manager_dbus_is_running(m, MANAGER_IS_RELOADING(m))) {
                (void) bus_init_api(m);

                if (MANAGER_IS_SYSTEM(m))
                        (void) bus_init_system(m);
        }
}
