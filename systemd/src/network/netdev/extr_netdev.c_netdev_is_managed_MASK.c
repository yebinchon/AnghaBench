#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  ifname; TYPE_1__* manager; } ;
struct TYPE_5__ {int /*<<< orphan*/  netdevs; } ;
typedef  TYPE_2__ NetDev ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC1(NetDev *netdev) {
        if (!netdev || !netdev->manager || !netdev->ifname)
                return false;

        return FUNC0(netdev->manager->netdevs, netdev->ifname) == netdev;
}