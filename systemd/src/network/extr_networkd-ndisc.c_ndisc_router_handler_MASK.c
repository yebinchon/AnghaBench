#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_14__ {struct TYPE_14__* manager; struct TYPE_14__* network; } ;
typedef  TYPE_1__ sd_ndisc_router ;
typedef  TYPE_1__ Link ;

/* Variables and functions */
 int EBUSY ; 
 int ND_RA_FLAG_MANAGED ; 
 int ND_RA_FLAG_OTHER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int FUNC3 (TYPE_1__*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*,int*) ; 

__attribute__((used)) static int FUNC7(Link *link, sd_ndisc_router *rt) {
        uint64_t flags;
        int r;

        FUNC0(link);
        FUNC0(link->network);
        FUNC0(link->manager);
        FUNC0(rt);

        r = FUNC6(rt, &flags);
        if (r < 0)
                return FUNC3(link, r, "Failed to get RA flags: %m");

        if (flags & (ND_RA_FLAG_MANAGED | ND_RA_FLAG_OTHER)) {
                /* (re)start DHCPv6 client in stateful or stateless mode according to RA flags */
                r = FUNC1(link, !(flags & ND_RA_FLAG_MANAGED));
                if (r < 0 && r != -EBUSY)
                        FUNC3(link, r, "Could not acquire DHCPv6 lease on NDisc request: %m");
                else {
                        FUNC2(link, "Acquiring DHCPv6 lease on NDisc request");
                        r = 0;
                }
        }

        (void) FUNC4(link, rt);
        (void) FUNC5(link, rt);

        return r;
}