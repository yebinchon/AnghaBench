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
struct TYPE_10__ {TYPE_1__* link; scalar_t__ section; TYPE_2__* network; } ;
struct TYPE_9__ {scalar_t__ n_neighbors; int /*<<< orphan*/  neighbors_by_section; int /*<<< orphan*/  neighbors; } ;
struct TYPE_8__ {int /*<<< orphan*/  neighbors_foreign; int /*<<< orphan*/  neighbors; } ;
typedef  TYPE_3__ Neighbor ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  neighbors ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_3__*) ; 

void FUNC6(Neighbor *neighbor) {
        if (!neighbor)
                return;

        if (neighbor->network) {
                FUNC0(neighbors, neighbor->network->neighbors, neighbor);
                FUNC1(neighbor->network->n_neighbors > 0);
                neighbor->network->n_neighbors--;

                if (neighbor->section)
                        FUNC3(neighbor->network->neighbors_by_section, neighbor->section);
        }

        FUNC4(neighbor->section);

        if (neighbor->link) {
                FUNC5(neighbor->link->neighbors, neighbor);
                FUNC5(neighbor->link->neighbors_foreign, neighbor);
        }

        FUNC2(neighbor);
}