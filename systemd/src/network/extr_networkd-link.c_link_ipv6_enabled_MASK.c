#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ bond; } ;
struct TYPE_6__ {scalar_t__ iftype; TYPE_2__* network; } ;
typedef  TYPE_1__ Link ;

/* Variables and functions */
 scalar_t__ ARPHRD_CAN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static bool FUNC4(Link *link) {
        FUNC0(link);

        if (!FUNC3())
                return false;

        if (link->network->bond)
                return false;

        if (link->iftype == ARPHRD_CAN)
                return false;

        /* DHCPv6 client will not be started if no IPv6 link-local address is configured. */
        if (FUNC1(link))
                return true;

        if (FUNC2(link->network))
                return true;

        return false;
}