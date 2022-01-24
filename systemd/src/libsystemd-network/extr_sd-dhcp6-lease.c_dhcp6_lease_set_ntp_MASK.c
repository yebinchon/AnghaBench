#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int ntp_count; int ntp_fqdn_count; int /*<<< orphan*/  ntp_fqdn; scalar_t__ ntp_allocated; int /*<<< orphan*/  ntp; } ;
typedef  TYPE_1__ uint8_t ;
typedef  int uint16_t ;
typedef  TYPE_1__ sd_dhcp6_lease ;

/* Variables and functions */
#define  DHCP6_NTP_SUBOPTION_MC_ADDR 130 
#define  DHCP6_NTP_SUBOPTION_SRV_ADDR 129 
#define  DHCP6_NTP_SUBOPTION_SRV_FQDN 128 
 int /*<<< orphan*/  EINVAL ; 
 int ENOMSG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__**,size_t*,int*,size_t*,TYPE_1__**) ; 
 int FUNC2 (TYPE_1__*,size_t,char***) ; 
 int FUNC3 (TYPE_1__*,size_t,int /*<<< orphan*/ *,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char**) ; 

int FUNC6(sd_dhcp6_lease *lease, uint8_t *optval, size_t optlen) {
        int r;
        uint16_t subopt;
        size_t sublen;
        uint8_t *subval;

        FUNC0(lease, -EINVAL);
        FUNC0(optval, -EINVAL);

        lease->ntp = FUNC4(lease->ntp);
        lease->ntp_count = 0;
        lease->ntp_allocated = 0;

        while ((r = FUNC1(&optval, &optlen, &subopt, &sublen,
                                       &subval)) >= 0) {
                int s;
                char **servers;

                switch(subopt) {
                case DHCP6_NTP_SUBOPTION_SRV_ADDR:
                case DHCP6_NTP_SUBOPTION_MC_ADDR:
                        if (sublen != 16)
                                return 0;

                        s = FUNC3(subval, sublen,
                                                        &lease->ntp,
                                                        lease->ntp_count,
                                                        &lease->ntp_allocated);
                        if (s < 0)
                                return s;

                        lease->ntp_count = s;

                        break;

                case DHCP6_NTP_SUBOPTION_SRV_FQDN:
                        r = FUNC2(subval, sublen,
                                                          &servers);
                        if (r < 0)
                                return 0;

                        FUNC5(lease->ntp_fqdn, servers);
                        lease->ntp_fqdn_count = r;

                        break;
                }
        }

        if (r != -ENOMSG)
                return r;

        return 0;
}