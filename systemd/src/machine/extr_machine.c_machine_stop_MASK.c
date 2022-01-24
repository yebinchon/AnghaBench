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
struct TYPE_6__ {int stopping; int /*<<< orphan*/  manager; int /*<<< orphan*/  class; } ;
typedef  TYPE_1__ Machine ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MACHINE_CONTAINER ; 
 int /*<<< orphan*/  MACHINE_VM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(Machine *m) {
        int r;
        FUNC1(m);

        if (!FUNC0(m->class, MACHINE_CONTAINER, MACHINE_VM))
                return -EOPNOTSUPP;

        r = FUNC3(m);

        m->stopping = true;

        FUNC2(m);
        (void) FUNC4(m->manager);

        return r;
}