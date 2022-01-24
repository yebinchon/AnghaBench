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
struct TYPE_6__ {scalar_t__ index; } ;
struct TYPE_7__ {scalar_t__ n_containers; TYPE_1__ root_container; scalar_t__ containers_allocated; int /*<<< orphan*/  containers; } ;
typedef  TYPE_2__ sd_bus_message ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(sd_bus_message *m) {
        FUNC0(m);

        while (m->n_containers > 0)
                FUNC1(m);

        m->containers = FUNC2(m->containers);
        m->containers_allocated = 0;
        m->root_container.index = 0;
}