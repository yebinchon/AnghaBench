#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct in6_addr {TYPE_2__* prefix_iter; } ;
typedef  struct in6_addr uint8_t ;
typedef  struct in6_addr uint32_t ;
typedef  struct in6_addr sd_dhcp6_lease ;
struct TYPE_3__ {int /*<<< orphan*/  lifetime_valid; int /*<<< orphan*/  lifetime_preferred; struct in6_addr prefixlen; int /*<<< orphan*/  address; } ;
struct TYPE_4__ {struct TYPE_4__* addresses_next; TYPE_1__ iapdprefix; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int ENOMSG ; 
 int /*<<< orphan*/  FUNC0 (struct in6_addr*,int /*<<< orphan*/ ) ; 
 struct in6_addr FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct in6_addr*,int /*<<< orphan*/ *,int) ; 

int FUNC3(sd_dhcp6_lease *lease, struct in6_addr *prefix,
                          uint8_t *prefix_len,
                          uint32_t *lifetime_preferred,
                          uint32_t *lifetime_valid) {
        FUNC0(lease, -EINVAL);
        FUNC0(prefix, -EINVAL);
        FUNC0(prefix_len, -EINVAL);
        FUNC0(lifetime_preferred, -EINVAL);
        FUNC0(lifetime_valid, -EINVAL);

        if (!lease->prefix_iter)
                return -ENOMSG;

        FUNC2(prefix, &lease->prefix_iter->iapdprefix.address,
               sizeof(struct in6_addr));
        *prefix_len = lease->prefix_iter->iapdprefix.prefixlen;
        *lifetime_preferred =
                FUNC1(lease->prefix_iter->iapdprefix.lifetime_preferred);
        *lifetime_valid =
                FUNC1(lease->prefix_iter->iapdprefix.lifetime_valid);

        lease->prefix_iter = lease->prefix_iter->addresses_next;

        return 0;
}