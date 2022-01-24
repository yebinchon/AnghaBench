#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int in_stop_when_unneeded_queue; TYPE_1__* manager; int /*<<< orphan*/  stop_when_unneeded; } ;
typedef  TYPE_2__ Unit ;
struct TYPE_7__ {int /*<<< orphan*/  stop_when_unneeded_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  stop_when_unneeded_queue ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

void FUNC4(Unit *u) {
        FUNC2(u);

        if (u->in_stop_when_unneeded_queue)
                return;

        if (!u->stop_when_unneeded)
                return;

        if (!FUNC1(FUNC3(u)))
                return;

        FUNC0(stop_when_unneeded_queue, u->manager->stop_when_unneeded_queue, u);
        u->in_stop_when_unneeded_queue = true;
}