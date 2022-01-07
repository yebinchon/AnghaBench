
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* mdns_ipv6_fd; void* mdns_ipv6_event_source; void* mdns_ipv4_fd; void* mdns_ipv4_event_source; } ;
typedef TYPE_1__ Manager ;


 int assert (TYPE_1__*) ;
 void* safe_close (void*) ;
 void* sd_event_source_unref (void*) ;

void manager_mdns_stop(Manager *m) {
        assert(m);

        m->mdns_ipv4_event_source = sd_event_source_unref(m->mdns_ipv4_event_source);
        m->mdns_ipv4_fd = safe_close(m->mdns_ipv4_fd);

        m->mdns_ipv6_event_source = sd_event_source_unref(m->mdns_ipv6_event_source);
        m->mdns_ipv6_fd = safe_close(m->mdns_ipv6_fd);
}
