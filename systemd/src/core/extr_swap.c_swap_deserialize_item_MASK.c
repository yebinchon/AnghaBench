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
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  Unit ;
struct TYPE_6__ {scalar_t__ exec_command; scalar_t__ control_command; scalar_t__ control_command_id; int /*<<< orphan*/  control_pid; scalar_t__ result; scalar_t__ deserialized_state; } ;
typedef  scalar_t__ SwapState ;
typedef  scalar_t__ SwapResult ;
typedef  scalar_t__ SwapExecCommand ;
typedef  TYPE_1__ Swap ;
typedef  TYPE_1__ FDSet ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ SWAP_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char const*) ; 
 scalar_t__ FUNC3 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 scalar_t__ FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char const*) ; 
 scalar_t__ FUNC7 (char const*) ; 

__attribute__((used)) static int FUNC8(Unit *u, const char *key, const char *value, FDSet *fds) {
        Swap *s = FUNC0(u);

        FUNC1(s);
        FUNC1(fds);

        if (FUNC4(key, "state")) {
                SwapState state;

                state = FUNC7(value);
                if (state < 0)
                        FUNC2(u, "Failed to parse state value: %s", value);
                else
                        s->deserialized_state = state;
        } else if (FUNC4(key, "result")) {
                SwapResult f;

                f = FUNC6(value);
                if (f < 0)
                        FUNC2(u, "Failed to parse result value: %s", value);
                else if (f != SWAP_SUCCESS)
                        s->result = f;
        } else if (FUNC4(key, "control-pid")) {
                pid_t pid;

                if (FUNC3(value, &pid) < 0)
                        FUNC2(u, "Failed to parse control-pid value: %s", value);
                else
                        s->control_pid = pid;

        } else if (FUNC4(key, "control-command")) {
                SwapExecCommand id;

                id = FUNC5(value);
                if (id < 0)
                        FUNC2(u, "Failed to parse exec-command value: %s", value);
                else {
                        s->control_command_id = id;
                        s->control_command = s->exec_command + id;
                }
        } else
                FUNC2(u, "Unknown serialization key: %s", key);

        return 0;
}