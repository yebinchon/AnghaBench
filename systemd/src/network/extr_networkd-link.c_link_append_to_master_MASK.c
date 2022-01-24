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
struct TYPE_9__ {int /*<<< orphan*/  slaves; int /*<<< orphan*/  ifindex; int /*<<< orphan*/  manager; } ;
typedef  TYPE_1__ NetDev ;
typedef  TYPE_1__ Link ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(Link *link, NetDev *netdev) {
        Link *master;
        int r;

        FUNC0(link);
        FUNC0(netdev);

        r = FUNC1(link->manager, netdev->ifindex, &master);
        if (r < 0)
                return r;

        r = FUNC3(&master->slaves, NULL);
        if (r < 0)
                return r;

        r = FUNC4(master->slaves, link);
        if (r <= 0)
                return r;

        FUNC2(link);
        return 0;
}