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
struct TYPE_6__ {scalar_t__ n_operations; int /*<<< orphan*/  event; int /*<<< orphan*/  bus; int /*<<< orphan*/  polkit_registry; int /*<<< orphan*/  nscd_cache_flush_event; int /*<<< orphan*/  image_cache_defer_event; int /*<<< orphan*/  image_cache; int /*<<< orphan*/  machine_leaders; int /*<<< orphan*/  machine_units; int /*<<< orphan*/  machines; scalar_t__ operations; } ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static Manager* FUNC8(Manager *m) {
        if (!m)
                return NULL;

        while (m->operations)
                FUNC4(m->operations);

        FUNC0(m->n_operations == 0);

        FUNC2(m->machines); /* This will free all machines, so that the machine_units/machine_leaders is empty */
        FUNC2(m->machine_units);
        FUNC2(m->machine_leaders);
        FUNC2(m->image_cache);

        FUNC6(m->image_cache_defer_event);
        FUNC6(m->nscd_cache_flush_event);

        FUNC1(m->polkit_registry);

        FUNC5(m->bus);
        FUNC7(m->event);

        return FUNC3(m);
}