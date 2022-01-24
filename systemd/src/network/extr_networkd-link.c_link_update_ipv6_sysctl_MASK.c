#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int flags; int /*<<< orphan*/  ifname; } ;
typedef  TYPE_1__ Link ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int IFF_LOOPBACK ; 
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int FUNC2 (TYPE_1__*,int,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC4(Link *link) {
        bool enabled;
        int r;

        if (link->flags & IFF_LOOPBACK)
                return 0;

        enabled = FUNC0(link);
        if (enabled) {
                r = FUNC3(AF_INET6, link->ifname, "disable_ipv6", false);
                if (r < 0)
                        return FUNC2(link, r, "Cannot enable IPv6: %m");

                FUNC1(link, "IPv6 successfully enabled");
        }

        return 0;
}