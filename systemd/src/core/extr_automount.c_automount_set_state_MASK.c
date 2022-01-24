#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ state; } ;
typedef  scalar_t__ AutomountState ;
typedef  TYPE_1__ Automount ;

/* Variables and functions */
 scalar_t__ AUTOMOUNT_RUNNING ; 
 int /*<<< orphan*/  AUTOMOUNT_WAITING ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * state_translation_table ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC9(Automount *a, AutomountState state) {
        AutomountState old_state;
        FUNC2(a);

        if (a->state != state)
                FUNC5(FUNC1(a), false);

        old_state = a->state;
        a->state = state;

        if (state != AUTOMOUNT_RUNNING)
                FUNC4(a);

        if (!FUNC0(state, AUTOMOUNT_WAITING, AUTOMOUNT_RUNNING))
                FUNC8(a);

        if (state != old_state)
                FUNC6(FUNC1(a), "Changed %s -> %s", FUNC3(old_state), FUNC3(state));

        FUNC7(FUNC1(a), state_translation_table[old_state], state_translation_table[state], 0);
}