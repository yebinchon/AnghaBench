#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  refs_by_target; struct TYPE_10__* target; struct TYPE_10__* source; } ;
typedef  TYPE_1__ UnitRef ;
typedef  TYPE_1__ Unit ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  refs_by_target ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

Unit* FUNC3(UnitRef *ref, Unit *source, Unit *target) {
        FUNC1(ref);
        FUNC1(source);
        FUNC1(target);

        if (ref->target)
                FUNC2(ref);

        ref->source = source;
        ref->target = target;
        FUNC0(refs_by_target, target->refs_by_target, ref);
        return target;
}