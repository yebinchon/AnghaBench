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
struct TYPE_6__ {int /*<<< orphan*/ * routes; int /*<<< orphan*/ * addresses; int /*<<< orphan*/  bond; int /*<<< orphan*/  bridge; int /*<<< orphan*/  vlan; int /*<<< orphan*/  dns; int /*<<< orphan*/  hostname; int /*<<< orphan*/  ifname; } ;
typedef  int /*<<< orphan*/  Route ;
typedef  TYPE_1__ Network ;
typedef  int /*<<< orphan*/  Address ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static Network *FUNC5(Network *network) {
        Address *address;
        Route *route;

        if (!network)
                return NULL;

        FUNC1(network->ifname);
        FUNC1(network->hostname);
        FUNC4(network->dns);
        FUNC1(network->vlan);
        FUNC1(network->bridge);
        FUNC1(network->bond);

        while ((address = network->addresses))
                FUNC0(address);

        while ((route = network->routes))
                FUNC3(route);

        return FUNC2(network);
}