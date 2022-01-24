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
struct in_addr {scalar_t__ claimed_address; scalar_t__ s_addr; } ;
typedef  struct in_addr sd_ipv4ll ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct in_addr*,int /*<<< orphan*/ ) ; 

int FUNC1(sd_ipv4ll *ll, struct in_addr *address) {
        FUNC0(ll, -EINVAL);
        FUNC0(address, -EINVAL);

        if (ll->claimed_address == 0)
                return -ENOENT;

        address->s_addr = ll->claimed_address;

        return 0;
}