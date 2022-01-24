#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ leader; int /*<<< orphan*/  netif; int /*<<< orphan*/  root_directory; int /*<<< orphan*/  service; int /*<<< orphan*/  state_file; int /*<<< orphan*/  name; int /*<<< orphan*/  create_message; TYPE_1__* manager; int /*<<< orphan*/  scope_job; scalar_t__ in_gc_queue; scalar_t__ operations; } ;
struct TYPE_10__ {int /*<<< orphan*/  machine_leaders; TYPE_2__* host_machine; int /*<<< orphan*/  machines; int /*<<< orphan*/  machine_gc_queue; } ;
typedef  TYPE_2__ Machine ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gc_queue ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 TYPE_2__* FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

Machine* FUNC9(Machine *m) {
        if (!m)
                return NULL;

        while (m->operations)
                FUNC7(m->operations);

        if (m->in_gc_queue)
                FUNC0(gc_queue, m->manager->machine_gc_queue, m);

        FUNC5(m);

        FUNC2(m->scope_job);

        (void) FUNC3(m->manager->machines, m->name);

        if (m->manager->host_machine == m)
                m->manager->host_machine = NULL;

        if (m->leader > 0)
                (void) FUNC4(m->manager->machine_leaders, FUNC1(m->leader), m);

        FUNC8(m->create_message);

        FUNC2(m->name);
        FUNC2(m->state_file);
        FUNC2(m->service);
        FUNC2(m->root_directory);
        FUNC2(m->netif);
        return FUNC6(m);
}