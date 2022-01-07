
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int network_event_source; int event; int network_monitor; } ;
typedef TYPE_1__ Manager ;


 scalar_t__ SD_EVENT_PRIORITY_IMPORTANT ;
 int assert (TYPE_1__*) ;
 int on_network_event ;
 int sd_event_add_io (int ,int *,int,int,int *,TYPE_1__*) ;
 int sd_event_source_set_description (int ,char*) ;
 int sd_event_source_set_priority (int ,scalar_t__) ;
 int sd_network_monitor_get_events (int ) ;
 int sd_network_monitor_get_fd (int ) ;
 int sd_network_monitor_new (int *,int *) ;

__attribute__((used)) static int manager_network_monitor_listen(Manager *m) {
        int r, fd, events;

        assert(m);

        r = sd_network_monitor_new(&m->network_monitor, ((void*)0));
        if (r < 0)
                return r;

        fd = sd_network_monitor_get_fd(m->network_monitor);
        if (fd < 0)
                return fd;

        events = sd_network_monitor_get_events(m->network_monitor);
        if (events < 0)
                return events;

        r = sd_event_add_io(m->event, &m->network_event_source, fd, events, &on_network_event, m);
        if (r < 0)
                return r;

        r = sd_event_source_set_priority(m->network_event_source, SD_EVENT_PRIORITY_IMPORTANT+5);
        if (r < 0)
                return r;

        (void) sd_event_source_set_description(m->network_event_source, "network-monitor");

        return 0;
}
