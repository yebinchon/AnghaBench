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
struct TYPE_4__ {void* mdns_ipv6_fd; void* mdns_ipv6_event_source; void* mdns_ipv4_fd; void* mdns_ipv4_event_source; } ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 void* FUNC1 (void*) ; 
 void* FUNC2 (void*) ; 

void FUNC3(Manager *m) {
        FUNC0(m);

        m->mdns_ipv4_event_source = FUNC2(m->mdns_ipv4_event_source);
        m->mdns_ipv4_fd = FUNC1(m->mdns_ipv4_fd);

        m->mdns_ipv6_event_source = FUNC2(m->mdns_ipv6_event_source);
        m->mdns_ipv6_fd = FUNC1(m->mdns_ipv6_fd);
}