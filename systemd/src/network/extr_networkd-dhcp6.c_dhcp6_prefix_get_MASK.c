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
struct in6_addr {int /*<<< orphan*/  dhcp6_prefixes; } ;
typedef  struct in6_addr Manager ;
typedef  int /*<<< orphan*/  Link ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct in6_addr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,struct in6_addr*) ; 

__attribute__((used)) static Link *FUNC2(Manager *m, struct in6_addr *addr) {
        FUNC0(m, NULL);
        FUNC0(addr, NULL);

        return FUNC1(m->dhcp6_prefixes, addr);
}