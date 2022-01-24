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
struct TYPE_6__ {scalar_t__ state; scalar_t__ reload_result; int /*<<< orphan*/  control_command_id; int /*<<< orphan*/ * control_command; int /*<<< orphan*/  timer_event_source; } ;
typedef  scalar_t__ MountState ;
typedef  TYPE_1__ Mount ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ MOUNT_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  UNIT_NOTIFY_RELOAD_FAILURE ; 
 int /*<<< orphan*/  _MOUNT_EXEC_COMMAND_INVALID ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * state_translation_table ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(Mount *m, MountState state) {
        MountState old_state;
        FUNC2(m);

        if (m->state != state)
                FUNC3(FUNC1(m), false);

        old_state = m->state;
        m->state = state;

        if (!FUNC0(state)) {
                m->timer_event_source = FUNC7(m->timer_event_source);
                FUNC6(m);
                m->control_command = NULL;
                m->control_command_id = _MOUNT_EXEC_COMMAND_INVALID;
        }

        if (state != old_state)
                FUNC4(FUNC1(m), "Changed %s -> %s", FUNC5(old_state), FUNC5(state));

        FUNC8(FUNC1(m), state_translation_table[old_state], state_translation_table[state],
                    m->reload_result == MOUNT_SUCCESS ? 0 : UNIT_NOTIFY_RELOAD_FAILURE);
}