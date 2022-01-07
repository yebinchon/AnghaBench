
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ inotify_fd; int inotify_event_source; int event_priority; int event; } ;
typedef TYPE_1__ sd_bus ;


 int EPOLLIN ;
 int assert (TYPE_1__*) ;
 int io_callback ;
 int sd_event_add_io (int ,int *,scalar_t__,int ,int ,TYPE_1__*) ;
 int sd_event_source_set_description (int ,char*) ;
 int sd_event_source_set_io_fd (int ,scalar_t__) ;
 int sd_event_source_set_priority (int ,int ) ;

int bus_attach_inotify_event(sd_bus *bus) {
        int r;

        assert(bus);

        if (bus->inotify_fd < 0)
                return 0;

        if (!bus->event)
                return 0;

        if (!bus->inotify_event_source) {
                r = sd_event_add_io(bus->event, &bus->inotify_event_source, bus->inotify_fd, EPOLLIN, io_callback, bus);
                if (r < 0)
                        return r;

                r = sd_event_source_set_priority(bus->inotify_event_source, bus->event_priority);
                if (r < 0)
                        return r;

                r = sd_event_source_set_description(bus->inotify_event_source, "bus-inotify");
        } else
                r = sd_event_source_set_io_fd(bus->inotify_event_source, bus->inotify_fd);
        if (r < 0)
                return r;

        return 0;
}
