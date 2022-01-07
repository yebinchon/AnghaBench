
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ inotify_event_source; } ;
typedef TYPE_1__ sd_bus ;


 int SD_EVENT_OFF ;
 int assert (TYPE_1__*) ;
 int sd_event_source_set_enabled (scalar_t__,int ) ;
 scalar_t__ sd_event_source_unref (scalar_t__) ;

__attribute__((used)) static void bus_detach_inotify_event(sd_bus *bus) {
        assert(bus);

        if (bus->inotify_event_source) {
                sd_event_source_set_enabled(bus->inotify_event_source, SD_EVENT_OFF);
                bus->inotify_event_source = sd_event_source_unref(bus->inotify_event_source);
        }
}
