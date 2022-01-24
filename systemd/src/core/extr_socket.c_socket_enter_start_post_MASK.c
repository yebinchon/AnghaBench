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
struct TYPE_10__ {size_t control_command_id; int /*<<< orphan*/  control_pid; scalar_t__ control_command; scalar_t__* exec_command; } ;
typedef  TYPE_1__ Socket ;

/* Variables and functions */
 size_t SOCKET_EXEC_START_POST ; 
 int /*<<< orphan*/  SOCKET_FAILURE_RESOURCES ; 
 int /*<<< orphan*/  SOCKET_START_POST ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC8(Socket *s) {
        int r;
        FUNC1(s);

        FUNC7(s);
        s->control_command_id = SOCKET_EXEC_START_POST;
        s->control_command = s->exec_command[SOCKET_EXEC_START_POST];

        if (s->control_command) {
                r = FUNC6(s, s->control_command, &s->control_pid);
                if (r < 0) {
                        FUNC2(FUNC0(s), r, "Failed to run 'start-post' task: %m");
                        goto fail;
                }

                FUNC5(s, SOCKET_START_POST);
        } else
                FUNC3(s);

        return;

fail:
        FUNC4(s, SOCKET_FAILURE_RESOURCES);
}