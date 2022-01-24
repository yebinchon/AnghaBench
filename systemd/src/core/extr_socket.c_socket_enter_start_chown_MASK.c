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
struct TYPE_11__ {int /*<<< orphan*/  control_pid; int /*<<< orphan*/ * control_command; int /*<<< orphan*/  control_command_id; int /*<<< orphan*/  group; int /*<<< orphan*/  user; } ;
typedef  TYPE_1__ Socket ;

/* Variables and functions */
 int /*<<< orphan*/  SOCKET_EXEC_START_CHOWN ; 
 int /*<<< orphan*/  SOCKET_FAILURE_RESOURCES ; 
 int /*<<< orphan*/  SOCKET_START_CHOWN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC10(Socket *s) {
        int r;

        FUNC1(s);

        r = FUNC7(s);
        if (r < 0) {
                FUNC3(FUNC0(s), r, "Failed to listen on sockets: %m");
                goto fail;
        }

        if (!FUNC2(s->user) || !FUNC2(s->group)) {

                FUNC9(s);
                s->control_command_id = SOCKET_EXEC_START_CHOWN;
                s->control_command = NULL;

                r = FUNC4(s, &s->control_pid);
                if (r < 0) {
                        FUNC3(FUNC0(s), r, "Failed to fork 'start-chown' task: %m");
                        goto fail;
                }

                FUNC8(s, SOCKET_START_CHOWN);
        } else
                FUNC5(s);

        return;

fail:
        FUNC6(s, SOCKET_FAILURE_RESOURCES);
}