#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int protocol; } ;
typedef  TYPE_1__ DnsPacket ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 scalar_t__ FUNC11 (TYPE_1__*) ; 
#define  DNS_PROTOCOL_DNS 130 
#define  DNS_PROTOCOL_LLMNR 129 
#define  DNS_PROTOCOL_MDNS 128 
 int EBADMSG ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int FUNC13 (TYPE_1__*) ; 

int FUNC14(DnsPacket *p) {
        int r;

        FUNC12(p);

        r = FUNC13(p);
        if (r < 0)
                return r;

        if (FUNC7(p) != 0)
                return 0;

        if (FUNC5(p) != 0)
                return -EBADMSG;

        if (FUNC11(p))
                return -EBADMSG;

        switch (p->protocol) {

        case DNS_PROTOCOL_LLMNR:
        case DNS_PROTOCOL_DNS:
                /* RFC 4795, Section 2.1.1. says to discard all queries with QDCOUNT != 1 */
                if (FUNC6(p) != 1)
                        return -EBADMSG;

                /* RFC 4795, Section 2.1.1. says to discard all queries with ANCOUNT != 0 */
                if (FUNC2(p) > 0)
                        return -EBADMSG;

                /* RFC 4795, Section 2.1.1. says to discard all queries with NSCOUNT != 0 */
                if (FUNC4(p) > 0)
                        return -EBADMSG;

                break;

        case DNS_PROTOCOL_MDNS:
                /* RFC 6762, Section 18 */
                if (FUNC0(p)    != 0 ||
                    FUNC10(p)    != 0 ||
                    FUNC8(p)    != 0 ||
                    FUNC1(p)    != 0 ||
                    FUNC3(p)    != 0 ||
                    FUNC9(p) != 0)
                        return -EBADMSG;

                break;

        default:
                break;
        }

        return 1;
}