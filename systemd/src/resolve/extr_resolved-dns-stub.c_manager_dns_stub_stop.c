
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* dns_stub_tcp_fd; void* dns_stub_udp_fd; void* dns_stub_tcp_event_source; void* dns_stub_udp_event_source; } ;
typedef TYPE_1__ Manager ;


 int assert (TYPE_1__*) ;
 void* safe_close (void*) ;
 void* sd_event_source_unref (void*) ;

void manager_dns_stub_stop(Manager *m) {
        assert(m);

        m->dns_stub_udp_event_source = sd_event_source_unref(m->dns_stub_udp_event_source);
        m->dns_stub_tcp_event_source = sd_event_source_unref(m->dns_stub_tcp_event_source);

        m->dns_stub_udp_fd = safe_close(m->dns_stub_udp_fd);
        m->dns_stub_tcp_fd = safe_close(m->dns_stub_tcp_fd);
}
