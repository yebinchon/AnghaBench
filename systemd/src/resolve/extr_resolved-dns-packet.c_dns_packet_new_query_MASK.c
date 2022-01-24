#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  DnsProtocol ;
typedef  int /*<<< orphan*/  DnsPacket ;

/* Variables and functions */
 int /*<<< orphan*/  DNS_PACKET_SIZE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 

int FUNC3(DnsPacket **ret, DnsProtocol protocol, size_t min_alloc_dsize, bool dnssec_checking_disabled) {
        DnsPacket *p;
        int r;

        FUNC0(ret);

        r = FUNC1(&p, protocol, min_alloc_dsize, DNS_PACKET_SIZE_MAX);
        if (r < 0)
                return r;

        /* Always set the TC bit to 0 initially.
         * If there are multiple packets later, we'll update the bit shortly before sending.
         */
        FUNC2(p, dnssec_checking_disabled, false);

        *ret = p;
        return 0;
}