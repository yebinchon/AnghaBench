#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void* dns_stub_tcp_fd; void* dns_stub_udp_fd; void* dns_stub_tcp_event_source; void* dns_stub_udp_event_source; } ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 void* FUNC1 (void*) ; 
 void* FUNC2 (void*) ; 

void FUNC3(Manager *m) {
        FUNC0(m);

        m->dns_stub_udp_event_source = FUNC2(m->dns_stub_udp_event_source);
        m->dns_stub_tcp_event_source = FUNC2(m->dns_stub_tcp_event_source);

        m->dns_stub_udp_fd = FUNC1(m->dns_stub_udp_fd);
        m->dns_stub_tcp_fd = FUNC1(m->dns_stub_tcp_fd);
}