#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  slaves; int /*<<< orphan*/  manager; } ;
struct TYPE_8__ {int /*<<< orphan*/  ifindex; } ;
typedef  TYPE_1__ NetDev ;
typedef  TYPE_2__ Link ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static void FUNC4(Link *link, NetDev *netdev) {
        Link *master;

        FUNC0(link);

        if (!link->manager || !netdev)
                return;

        if (FUNC1(link->manager, netdev->ifindex, &master) < 0)
                return;

        FUNC2(FUNC3(master->slaves, link));
}