#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Unit ;
typedef  int /*<<< orphan*/  Timer ;
struct TYPE_4__ {int /*<<< orphan*/ * dependencies; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UNIT_BEFORE ; 
 int /*<<< orphan*/  UNIT_DEPENDENCY_IMPLICIT ; 
 size_t UNIT_TRIGGERS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,char*,int /*<<< orphan*/ **) ; 

__attribute__((used)) static int FUNC5(Timer *t) {
        Unit *x;
        int r;

        FUNC1(t);

        if (!FUNC2(FUNC0(t)->dependencies[UNIT_TRIGGERS]))
                return 0;

        r = FUNC4(FUNC0(t), ".service", &x);
        if (r < 0)
                return r;

        return FUNC3(FUNC0(t), UNIT_BEFORE, UNIT_TRIGGERS, x, true, UNIT_DEPENDENCY_IMPLICIT);
}