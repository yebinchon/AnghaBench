
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int network_event_source; int event; int network_monitor; } ;
typedef TYPE_1__ Manager ;


 int ENOENT ;
 int assert (TYPE_1__*) ;
 int log_info (char*) ;
 int manager_network_event_handler ;
 int sd_event_add_io (int ,int *,int,int,int ,TYPE_1__*) ;
 int sd_network_monitor_get_events (int ) ;
 int sd_network_monitor_get_fd (int ) ;
 int sd_network_monitor_new (int *,int *) ;

__attribute__((used)) static int manager_network_monitor_listen(Manager *m) {
        int r, fd, events;

        assert(m);

        r = sd_network_monitor_new(&m->network_monitor, ((void*)0));
        if (r == -ENOENT) {
                log_info("systemd does not appear to be running, not listening for systemd-networkd events.");
                return 0;
        }
        if (r < 0)
                return r;

        fd = sd_network_monitor_get_fd(m->network_monitor);
        if (fd < 0)
                return fd;

        events = sd_network_monitor_get_events(m->network_monitor);
        if (events < 0)
                return events;

        r = sd_event_add_io(m->event, &m->network_event_source, fd, events, manager_network_event_handler, m);
        if (r < 0)
                return r;

        return 0;
}
