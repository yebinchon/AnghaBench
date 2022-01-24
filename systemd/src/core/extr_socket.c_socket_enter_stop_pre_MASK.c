#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ result; size_t control_command_id; int /*<<< orphan*/  control_pid; scalar_t__ control_command; scalar_t__* exec_command; } ;
typedef  scalar_t__ SocketResult ;
typedef  TYPE_1__ Socket ;

/* Variables and functions */
 size_t SOCKET_EXEC_STOP_PRE ; 
 scalar_t__ SOCKET_FAILURE_RESOURCES ; 
 int /*<<< orphan*/  SOCKET_STOP_PRE ; 
 scalar_t__ SOCKET_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC7(Socket *s, SocketResult f) {
        int r;
        FUNC1(s);

        if (s->result == SOCKET_SUCCESS)
                s->result = f;

        FUNC6(s);
        s->control_command_id = SOCKET_EXEC_STOP_PRE;
        s->control_command = s->exec_command[SOCKET_EXEC_STOP_PRE];

        if (s->control_command) {
                r = FUNC5(s, s->control_command, &s->control_pid);
                if (r < 0)
                        goto fail;

                FUNC4(s, SOCKET_STOP_PRE);
        } else
                FUNC3(s, SOCKET_SUCCESS);

        return;

fail:
        FUNC2(FUNC0(s), r, "Failed to run 'stop-pre' task: %m");
        FUNC3(s, SOCKET_FAILURE_RESOURCES);
}