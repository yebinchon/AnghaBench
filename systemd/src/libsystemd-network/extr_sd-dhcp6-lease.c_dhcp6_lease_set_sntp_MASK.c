#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int ntp_count; int /*<<< orphan*/  ntp_allocated; scalar_t__ ntp; scalar_t__ ntp_fqdn; } ;
typedef  TYPE_1__ uint8_t ;
typedef  TYPE_1__ sd_dhcp6_lease ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  client ; 
 int FUNC1 (TYPE_1__*,size_t,scalar_t__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,char*) ; 

int FUNC4(sd_dhcp6_lease *lease, uint8_t *optval, size_t optlen) {
        int r;

        FUNC0(lease, -EINVAL);
        FUNC0(optval, -EINVAL);

        if (!optlen)
                return 0;

        if (lease->ntp || lease->ntp_fqdn) {
                FUNC2(client, "NTP information already provided");

                return 0;
        }

        FUNC2(client, "Using deprecated SNTP information");

        r = FUNC1(optval, optlen, &lease->ntp,
                                        lease->ntp_count,
                                        &lease->ntp_allocated);
        if (r < 0)
                return FUNC3(client, r, "Invalid SNTP server option: %m");

        lease->ntp_count = r;

        return 0;
}