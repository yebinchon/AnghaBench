#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct in6_addr {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  state; struct in6_addr ipv6ll_address; } ;
typedef  TYPE_1__ Link ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LINK_STATE_CONFIGURED ; 
 int /*<<< orphan*/  LINK_STATE_CONFIGURING ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 

int FUNC6(Link *link, const struct in6_addr *address) {
        int r;

        FUNC1(link);

        FUNC5(link, "Gained IPv6LL");

        link->ipv6ll_address = *address;
        FUNC3(link);

        if (FUNC0(link->state, LINK_STATE_CONFIGURING, LINK_STATE_CONFIGURED)) {
                r = FUNC2(link);
                if (r < 0) {
                        FUNC4(link);
                        return r;
                }
        }

        return 0;
}