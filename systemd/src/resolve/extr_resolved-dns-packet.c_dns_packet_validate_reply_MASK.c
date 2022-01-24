#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int protocol; } ;
typedef  TYPE_1__ DnsPacket ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
#define  DNS_PROTOCOL_LLMNR 129 
#define  DNS_PROTOCOL_MDNS 128 
 int EBADMSG ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*) ; 

int FUNC6(DnsPacket *p) {
        int r;

        FUNC4(p);

        r = FUNC5(p);
        if (r < 0)
                return r;

        if (FUNC2(p) != 1)
                return 0;

        if (FUNC0(p) != 0)
                return -EBADMSG;

        switch (p->protocol) {

        case DNS_PROTOCOL_LLMNR:
                /* RFC 4795, Section 2.1.1. says to discard all replies with QDCOUNT != 1 */
                if (FUNC1(p) != 1)
                        return -EBADMSG;

                break;

        case DNS_PROTOCOL_MDNS:
                /* RFC 6762, Section 18 */
                if (FUNC3(p) != 0)
                        return -EBADMSG;

                break;

        default:
                break;
        }

        return 1;
}