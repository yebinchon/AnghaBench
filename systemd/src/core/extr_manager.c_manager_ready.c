
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int honor_device_enumeration; int objective; } ;
typedef TYPE_1__ Manager ;


 int MANAGER_OK ;
 int assert (TYPE_1__*) ;
 int manager_catchup (TYPE_1__*) ;
 int manager_enqueue_sync_bus_names (TYPE_1__*) ;
 int manager_recheck_dbus (TYPE_1__*) ;
 int manager_recheck_journal (TYPE_1__*) ;

__attribute__((used)) static void manager_ready(Manager *m) {
        assert(m);



        m->objective = MANAGER_OK;


        manager_recheck_journal(m);
        manager_recheck_dbus(m);


        (void) manager_enqueue_sync_bus_names(m);


        manager_catchup(m);

        m->honor_device_enumeration = 1;
}
