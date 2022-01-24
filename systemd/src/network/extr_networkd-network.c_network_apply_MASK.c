#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ n_dns; int /*<<< orphan*/  route_domains; int /*<<< orphan*/  search_domains; int /*<<< orphan*/  ntp; int /*<<< orphan*/  network; } ;
typedef  TYPE_1__ Network ;
typedef  TYPE_1__ Link ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(Network *network, Link *link) {
        FUNC0(network);
        FUNC0(link);

        link->network = FUNC2(network);

        if (network->n_dns > 0 ||
            !FUNC4(network->ntp) ||
            !FUNC3(network->search_domains) ||
            !FUNC3(network->route_domains))
                FUNC1(link);

        return 0;
}