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
struct in_addr {scalar_t__ s_addr; } ;
struct TYPE_4__ {scalar_t__ address; scalar_t__ subnet_mask; int have_subnet_mask; } ;
typedef  TYPE_1__ sd_dhcp_lease ;

/* Variables and functions */
 int ENODATA ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (struct in_addr*,struct in_addr*) ; 

int FUNC2(sd_dhcp_lease *lease) {
        struct in_addr address, mask;
        int r;

        FUNC0(lease);

        if (lease->address == 0)
                return -ENODATA;

        address.s_addr = lease->address;

        /* fall back to the default subnet masks based on address class */
        r = FUNC1(&address, &mask);
        if (r < 0)
                return r;

        lease->subnet_mask = mask.s_addr;
        lease->have_subnet_mask = true;

        return 0;
}