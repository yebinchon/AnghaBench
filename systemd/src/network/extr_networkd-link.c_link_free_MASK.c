#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  network; void* slaves; int /*<<< orphan*/  bound_by_links; int /*<<< orphan*/  bound_to_links; int /*<<< orphan*/  sd_device; int /*<<< orphan*/  state_file; int /*<<< orphan*/  ssid; int /*<<< orphan*/  kind; int /*<<< orphan*/  ifname; int /*<<< orphan*/  lldp_file; int /*<<< orphan*/  lease_file; int /*<<< orphan*/ * pool_addresses; void* addresses_foreign; void* addresses; void* neighbors_foreign; void* neighbors; void* nexthops_foreign; void* nexthops; void* routes_foreign; void* routes; } ;
typedef  TYPE_1__ Link ;
typedef  int /*<<< orphan*/  Address ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  addresses ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 void* FUNC16 (void*,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *)) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static Link *FUNC18(Link *link) {
        Address *address;

        FUNC2(link);

        FUNC8(link);
        FUNC5(link);

        link->routes = FUNC16(link->routes, route_free);
        link->routes_foreign = FUNC16(link->routes_foreign, route_free);

        link->nexthops = FUNC16(link->nexthops, nexthop_free);
        link->nexthops_foreign = FUNC16(link->nexthops_foreign, nexthop_free);

        link->neighbors = FUNC16(link->neighbors, neighbor_free);
        link->neighbors_foreign = FUNC16(link->neighbors_foreign, neighbor_free);

        link->addresses = FUNC16(link->addresses, address_free);
        link->addresses_foreign = FUNC16(link->addresses_foreign, address_free);

        while ((address = link->pool_addresses)) {
                FUNC0(addresses, link->pool_addresses, address);
                FUNC1(address);
        }

        FUNC7(link);
        FUNC6(link);
        FUNC3(link->lease_file);
        FUNC3(link->lldp_file);

        FUNC3(link->ifname);
        FUNC3(link->kind);
        FUNC3(link->ssid);

        (void) FUNC17(link->state_file);
        FUNC3(link->state_file);

        FUNC15(link->sd_device);

        FUNC4(link->bound_to_links);
        FUNC4(link->bound_by_links);

        FUNC16(link->slaves, link_unref);

        FUNC12(link->network);

        return FUNC10(link);
}