#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ state; } ;
typedef  TYPE_1__ NetDev ;

/* Variables and functions */
 scalar_t__ NETDEV_STATE_LINGER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

void FUNC4(NetDev *netdev) {
        if (!netdev || netdev->state == NETDEV_STATE_LINGER)
                return;

        netdev->state = NETDEV_STATE_LINGER;

        FUNC0(netdev, "netdev removed");

        FUNC1(netdev);

        FUNC2(netdev);

        FUNC3(netdev);

        return;
}