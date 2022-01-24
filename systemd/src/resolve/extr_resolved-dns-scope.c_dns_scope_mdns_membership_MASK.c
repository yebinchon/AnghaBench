#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ protocol; } ;
typedef  TYPE_1__ DnsScope ;

/* Variables and functions */
 scalar_t__ DNS_PROTOCOL_MDNS ; 
 int /*<<< orphan*/  MDNS_MULTICAST_IPV4_ADDRESS ; 
 int /*<<< orphan*/  MDNS_MULTICAST_IPV6_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(DnsScope *s, bool b) {
        FUNC0(s);

        if (s->protocol != DNS_PROTOCOL_MDNS)
                return 0;

        return FUNC1(s, b, MDNS_MULTICAST_IPV4_ADDRESS, MDNS_MULTICAST_IPV6_ADDRESS);
}