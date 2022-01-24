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
typedef  int /*<<< orphan*/  Unit ;
struct TYPE_6__ {int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ Service ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SERVICE_EXITED ; 
 int /*<<< orphan*/  SERVICE_RUNNING ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC4(Unit *u) {
        Service *s = FUNC1(u);

        FUNC2(s);

        FUNC2(FUNC0(s->state, SERVICE_RUNNING, SERVICE_EXITED));

        FUNC3(s);
        return 1;
}