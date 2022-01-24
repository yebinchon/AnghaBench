#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  union in_addr_union {int dummy; } in_addr_union ;
struct TYPE_9__ {int /*<<< orphan*/  ipv6ll_address; } ;
typedef  TYPE_1__ Link ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,union in_addr_union const*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*,int,char*) ; 

__attribute__((used)) static int FUNC7(Link *link) {
        int r;

        FUNC0(link);

        r = FUNC2(link);
        if (r < 0)
                return r;

        if (!FUNC1(AF_INET6, (const union in_addr_union*) &link->ipv6ll_address)) {
                r = FUNC3(link);
                if (r < 0)
                        return r;
        }

        if (FUNC4(link)) {
                r = FUNC5(link);
                if (r < 0)
                        return FUNC6(link, r, "Failed to start LLDP transmission: %m");
        }

        return 0;
}