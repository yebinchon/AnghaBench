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
struct TYPE_6__ {int in_target_deps_queue; TYPE_2__* manager; } ;
typedef  TYPE_1__ Unit ;
struct TYPE_7__ {int /*<<< orphan*/  target_deps_queue; } ;
typedef  TYPE_2__ Manager ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  target_deps_queue ; 

void FUNC2(Unit *u) {
        Manager *m = u->manager;

        FUNC1(u);

        if (u->in_target_deps_queue)
                return;

        FUNC0(target_deps_queue, m->target_deps_queue, u);
        u->in_target_deps_queue = true;
}