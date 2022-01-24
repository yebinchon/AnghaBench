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
struct in_addr {scalar_t__ next_server; scalar_t__ s_addr; } ;
typedef  struct in_addr sd_dhcp_lease ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int ENODATA ; 
 int /*<<< orphan*/  FUNC0 (struct in_addr*,int /*<<< orphan*/ ) ; 

int FUNC1(sd_dhcp_lease *lease, struct in_addr *addr) {
        FUNC0(lease, -EINVAL);
        FUNC0(addr, -EINVAL);

        if (lease->next_server == 0)
                return -ENODATA;

        addr->s_addr = lease->next_server;
        return 0;
}