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
typedef  union in_addr_union {int dummy; } in_addr_union ;
struct in6_addr {int dummy; } ;
typedef  int /*<<< orphan*/  sd_netlink_message ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int FUNC0 (int /*<<< orphan*/ *,unsigned short,int /*<<< orphan*/ ,union in_addr_union const*) ; 

int FUNC1(sd_netlink_message *m, unsigned short type, const struct in6_addr *data) {
        return FUNC0(m, type, AF_INET6, (const union in_addr_union *) data);
}