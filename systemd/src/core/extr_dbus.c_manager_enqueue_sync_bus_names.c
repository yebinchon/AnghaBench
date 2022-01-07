
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ sync_bus_names_event_source; int event; } ;
typedef TYPE_1__ Manager ;


 int SD_EVENT_ONESHOT ;
 int SD_EVENT_PRIORITY_IDLE ;
 int assert (TYPE_1__*) ;
 int log_error_errno (int,char*) ;
 int manager_dispatch_sync_bus_names ;
 int sd_event_add_defer (int ,scalar_t__*,int ,TYPE_1__*) ;
 int sd_event_source_set_description (scalar_t__,char*) ;
 int sd_event_source_set_enabled (scalar_t__,int ) ;
 int sd_event_source_set_priority (scalar_t__,int ) ;

int manager_enqueue_sync_bus_names(Manager *m) {
        int r;

        assert(m);





        if (m->sync_bus_names_event_source)
                return 0;

        r = sd_event_add_defer(m->event, &m->sync_bus_names_event_source, manager_dispatch_sync_bus_names, m);
        if (r < 0)
                return log_error_errno(r, "Failed to create bus name synchronization event: %m");

        r = sd_event_source_set_priority(m->sync_bus_names_event_source, SD_EVENT_PRIORITY_IDLE);
        if (r < 0)
                return log_error_errno(r, "Failed to set event priority: %m");

        r = sd_event_source_set_enabled(m->sync_bus_names_event_source, SD_EVENT_ONESHOT);
        if (r < 0)
                return log_error_errno(r, "Failed to set even to oneshot: %m");

        (void) sd_event_source_set_description(m->sync_bus_names_event_source, "manager-sync-bus-names");
        return 0;
}
