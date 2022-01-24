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
struct local_address {scalar_t__ family; int /*<<< orphan*/  address; int /*<<< orphan*/  ifindex; int /*<<< orphan*/  metric; int /*<<< orphan*/  scope; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(const struct local_address *a, const struct local_address *b) {
        int r;

        /* Order lowest scope first, IPv4 before IPv6, lowest interface index first */

        if (a->family == AF_INET && b->family == AF_INET6)
                return -1;
        if (a->family == AF_INET6 && b->family == AF_INET)
                return 1;

        r = FUNC0(a->scope, b->scope);
        if (r != 0)
                return r;

        r = FUNC0(a->metric, b->metric);
        if (r != 0)
                return r;

        r = FUNC0(a->ifindex, b->ifindex);
        if (r != 0)
                return r;

        return FUNC2(&a->address, &b->address, FUNC1(a->family));
}