
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* llmnr_ipv6_tcp_fd; void* llmnr_ipv6_tcp_event_source; void* llmnr_ipv4_tcp_fd; void* llmnr_ipv4_tcp_event_source; void* llmnr_ipv6_udp_fd; void* llmnr_ipv6_udp_event_source; void* llmnr_ipv4_udp_fd; void* llmnr_ipv4_udp_event_source; } ;
typedef TYPE_1__ Manager ;


 int assert (TYPE_1__*) ;
 void* safe_close (void*) ;
 void* sd_event_source_unref (void*) ;

void manager_llmnr_stop(Manager *m) {
        assert(m);

        m->llmnr_ipv4_udp_event_source = sd_event_source_unref(m->llmnr_ipv4_udp_event_source);
        m->llmnr_ipv4_udp_fd = safe_close(m->llmnr_ipv4_udp_fd);

        m->llmnr_ipv6_udp_event_source = sd_event_source_unref(m->llmnr_ipv6_udp_event_source);
        m->llmnr_ipv6_udp_fd = safe_close(m->llmnr_ipv6_udp_fd);

        m->llmnr_ipv4_tcp_event_source = sd_event_source_unref(m->llmnr_ipv4_tcp_event_source);
        m->llmnr_ipv4_tcp_fd = safe_close(m->llmnr_ipv4_tcp_fd);

        m->llmnr_ipv6_tcp_event_source = sd_event_source_unref(m->llmnr_ipv6_tcp_event_source);
        m->llmnr_ipv6_tcp_fd = safe_close(m->llmnr_ipv6_tcp_fd);
}
