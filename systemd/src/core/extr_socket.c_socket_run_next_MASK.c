#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ state; int /*<<< orphan*/  control_pid; struct TYPE_11__* control_command; struct TYPE_11__* command_next; } ;
typedef  TYPE_1__ Socket ;

/* Variables and functions */
 int /*<<< orphan*/  SOCKET_FAILURE_RESOURCES ; 
 int /*<<< orphan*/  SOCKET_FINAL_SIGTERM ; 
 scalar_t__ SOCKET_START_POST ; 
 scalar_t__ SOCKET_STOP_POST ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC8(Socket *s) {
        int r;

        FUNC1(s);
        FUNC1(s->control_command);
        FUNC1(s->control_command->command_next);

        FUNC7(s);

        s->control_command = s->control_command->command_next;

        r = FUNC6(s, s->control_command, &s->control_pid);
        if (r < 0)
                goto fail;

        return;

fail:
        FUNC2(FUNC0(s), r, "Failed to run next task: %m");

        if (s->state == SOCKET_START_POST)
                FUNC5(s, SOCKET_FAILURE_RESOURCES);
        else if (s->state == SOCKET_STOP_POST)
                FUNC3(s, SOCKET_FAILURE_RESOURCES);
        else
                FUNC4(s, SOCKET_FINAL_SIGTERM, SOCKET_FAILURE_RESOURCES);
}