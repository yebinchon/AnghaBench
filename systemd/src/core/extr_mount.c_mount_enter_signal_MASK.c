#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ send_sigkill; } ;
struct TYPE_10__ {scalar_t__ result; TYPE_2__ kill_context; int /*<<< orphan*/  timeout_usec; int /*<<< orphan*/  control_pid; } ;
typedef  int /*<<< orphan*/  MountState ;
typedef  scalar_t__ MountResult ;
typedef  TYPE_1__ Mount ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ MOUNT_FAILURE_RESOURCES ; 
 int /*<<< orphan*/  MOUNT_REMOUNTING_SIGKILL ; 
 int /*<<< orphan*/  MOUNT_REMOUNTING_SIGTERM ; 
 scalar_t__ MOUNT_SUCCESS ; 
 int /*<<< orphan*/  MOUNT_UNMOUNTING_SIGKILL ; 
 int /*<<< orphan*/  MOUNT_UNMOUNTING_SIGTERM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(Mount *m, MountState state, MountResult f) {
        int r;

        FUNC2(m);

        if (m->result == MOUNT_SUCCESS)
                m->result = f;

        r = FUNC10(
                        FUNC1(m),
                        &m->kill_context,
                        FUNC9(state),
                        -1,
                        m->control_pid,
                        false);
        if (r < 0)
                goto fail;

        if (r > 0) {
                r = FUNC4(m, FUNC11(FUNC8(CLOCK_MONOTONIC), m->timeout_usec));
                if (r < 0)
                        goto fail;

                FUNC7(m, state);
        } else if (state == MOUNT_REMOUNTING_SIGTERM && m->kill_context.send_sigkill)
                FUNC12(m, MOUNT_REMOUNTING_SIGKILL, MOUNT_SUCCESS);
        else if (FUNC0(state, MOUNT_REMOUNTING_SIGTERM, MOUNT_REMOUNTING_SIGKILL))
                FUNC6(m, MOUNT_SUCCESS);
        else if (state == MOUNT_UNMOUNTING_SIGTERM && m->kill_context.send_sigkill)
                FUNC12(m, MOUNT_UNMOUNTING_SIGKILL, MOUNT_SUCCESS);
        else
                FUNC5(m, MOUNT_SUCCESS);

        return;

fail:
        FUNC3(FUNC1(m), r, "Failed to kill processes: %m");
        FUNC5(m, MOUNT_FAILURE_RESOURCES);
}