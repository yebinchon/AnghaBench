#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ state; int /*<<< orphan*/  control_command_id; int /*<<< orphan*/ * control_command; int /*<<< orphan*/  timer_event_source; } ;
typedef  scalar_t__ SocketState ;
typedef  TYPE_1__ Socket ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  SOCKET_CLEANING ; 
 int /*<<< orphan*/  SOCKET_FINAL_SIGKILL ; 
 int /*<<< orphan*/  SOCKET_FINAL_SIGTERM ; 
 scalar_t__ SOCKET_LISTENING ; 
 int /*<<< orphan*/  SOCKET_RUNNING ; 
 int /*<<< orphan*/  SOCKET_START_CHOWN ; 
 int /*<<< orphan*/  SOCKET_START_POST ; 
 int /*<<< orphan*/  SOCKET_START_PRE ; 
 int /*<<< orphan*/  SOCKET_STOP_POST ; 
 int /*<<< orphan*/  SOCKET_STOP_PRE ; 
 int /*<<< orphan*/  SOCKET_STOP_PRE_SIGKILL ; 
 int /*<<< orphan*/  SOCKET_STOP_PRE_SIGTERM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  _SOCKET_EXEC_COMMAND_INVALID ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/ * state_translation_table ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(Socket *s, SocketState state) {
        SocketState old_state;
        FUNC2(s);

        if (s->state != state)
                FUNC3(FUNC1(s), false);

        old_state = s->state;
        s->state = state;

        if (!FUNC0(state,
                    SOCKET_START_PRE,
                    SOCKET_START_CHOWN,
                    SOCKET_START_POST,
                    SOCKET_STOP_PRE,
                    SOCKET_STOP_PRE_SIGTERM,
                    SOCKET_STOP_PRE_SIGKILL,
                    SOCKET_STOP_POST,
                    SOCKET_FINAL_SIGTERM,
                    SOCKET_FINAL_SIGKILL,
                    SOCKET_CLEANING)) {

                s->timer_event_source = FUNC5(s->timer_event_source);
                FUNC8(s);
                s->control_command = NULL;
                s->control_command_id = _SOCKET_EXEC_COMMAND_INVALID;
        }

        if (state != SOCKET_LISTENING)
                FUNC9(s);

        if (!FUNC0(state,
                    SOCKET_START_CHOWN,
                    SOCKET_START_POST,
                    SOCKET_LISTENING,
                    SOCKET_RUNNING,
                    SOCKET_STOP_PRE,
                    SOCKET_STOP_PRE_SIGTERM,
                    SOCKET_STOP_PRE_SIGKILL,
                    SOCKET_CLEANING))
                FUNC6(s);

        if (state != old_state)
                FUNC4(FUNC1(s), "Changed %s -> %s", FUNC7(old_state), FUNC7(state));

        FUNC10(FUNC1(s), state_translation_table[old_state], state_translation_table[state], 0);
}