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
typedef  int /*<<< orphan*/  uint32_t ;
struct in6_addr {int dummy; } ;
typedef  int /*<<< orphan*/  sd_dhcp6_lease ;
typedef  int /*<<< orphan*/  sd_dhcp6_client ;
typedef  int /*<<< orphan*/  Link ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct in6_addr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,struct in6_addr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(sd_dhcp6_client *client, Link *link) {
        int r;
        sd_dhcp6_lease *lease;
        struct in6_addr ip6_addr;
        uint32_t lifetime_preferred, lifetime_valid;

        r = FUNC1(client, &lease);
        if (r < 0)
                return r;

        FUNC3(lease);

        while (FUNC2(lease, &ip6_addr,
                                                 &lifetime_preferred,
                                                 &lifetime_valid) >= 0) {

                r = FUNC0(link, &ip6_addr, lifetime_preferred, lifetime_valid);
                if (r < 0)
                        return r;
        }

        return 0;
}