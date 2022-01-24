#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  char const Unit ;
struct TYPE_3__ {scalar_t__ exec_command; scalar_t__ control_command; scalar_t__ control_command_id; int /*<<< orphan*/  control_pid; int /*<<< orphan*/  n_retry_umount; scalar_t__ reload_result; scalar_t__ result; int /*<<< orphan*/  deserialized_state; } ;
typedef  int /*<<< orphan*/  MountState ;
typedef  scalar_t__ MountResult ;
typedef  scalar_t__ MountExecCommand ;
typedef  TYPE_1__ Mount ;
typedef  char const FDSet ;

/* Variables and functions */
 TYPE_1__* FUNC0 (char const*) ; 
 scalar_t__ MOUNT_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,char const*) ; 
 scalar_t__ FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char const*,int /*<<< orphan*/ *) ; 
 int FUNC7 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (char const*,char*) ; 

__attribute__((used)) static int FUNC9(Unit *u, const char *key, const char *value, FDSet *fds) {
        Mount *m = FUNC0(u);
        int r;

        FUNC1(u);
        FUNC1(key);
        FUNC1(value);
        FUNC1(fds);

        if (FUNC8(key, "state")) {
                MountState state;

                if ((state = FUNC5(value)) < 0)
                        FUNC2(u, "Failed to parse state value: %s", value);
                else
                        m->deserialized_state = state;

        } else if (FUNC8(key, "result")) {
                MountResult f;

                f = FUNC4(value);
                if (f < 0)
                        FUNC2(u, "Failed to parse result value: %s", value);
                else if (f != MOUNT_SUCCESS)
                        m->result = f;

        } else if (FUNC8(key, "reload-result")) {
                MountResult f;

                f = FUNC4(value);
                if (f < 0)
                        FUNC2(u, "Failed to parse reload result value: %s", value);
                else if (f != MOUNT_SUCCESS)
                        m->reload_result = f;

        } else if (FUNC8(key, "n-retry-umount")) {

                r = FUNC7(value, &m->n_retry_umount);
                if (r < 0)
                        FUNC2(u, "Failed to parse n-retry-umount value: %s", value);

        } else if (FUNC8(key, "control-pid")) {

                if (FUNC6(value, &m->control_pid) < 0)
                        FUNC2(u, "Failed to parse control-pid value: %s", value);

        } else if (FUNC8(key, "control-command")) {
                MountExecCommand id;

                id = FUNC3(value);
                if (id < 0)
                        FUNC2(u, "Failed to parse exec-command value: %s", value);
                else {
                        m->control_command_id = id;
                        m->control_command = m->exec_command + id;
                }
        } else
                FUNC2(u, "Unknown serialization key: %s", key);

        return 0;
}