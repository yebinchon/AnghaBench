#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  expire; TYPE_1__* link; scalar_t__ section; TYPE_2__* network; } ;
struct TYPE_9__ {scalar_t__ n_static_routes; int /*<<< orphan*/  routes_by_section; int /*<<< orphan*/  static_routes; } ;
struct TYPE_8__ {int /*<<< orphan*/  routes_foreign; int /*<<< orphan*/  routes; } ;
typedef  TYPE_3__ Route ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  routes ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_3__*) ; 

void FUNC7(Route *route) {
        if (!route)
                return;

        if (route->network) {
                FUNC0(routes, route->network->static_routes, route);

                FUNC1(route->network->n_static_routes > 0);
                route->network->n_static_routes--;

                if (route->section)
                        FUNC3(route->network->routes_by_section, route->section);
        }

        FUNC4(route->section);

        if (route->link) {
                FUNC6(route->link->routes, route);
                FUNC6(route->link->routes_foreign, route);
        }

        FUNC5(route->expire);

        FUNC2(route);
}