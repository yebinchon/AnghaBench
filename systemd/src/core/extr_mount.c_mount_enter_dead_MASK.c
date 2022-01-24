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
struct TYPE_6__ {scalar_t__ result; int /*<<< orphan*/  dynamic_creds; int /*<<< orphan*/  exec_context; int /*<<< orphan*/  exec_runtime; } ;
typedef  scalar_t__ MountResult ;
typedef  TYPE_1__ Mount ;

/* Variables and functions */
 int /*<<< orphan*/  MOUNT_DEAD ; 
 int /*<<< orphan*/  MOUNT_FAILED ; 
 scalar_t__ MOUNT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  UNIT_DEPENDENCY_MOUNTINFO_IMPLICIT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC10(Mount *m, MountResult f) {
        FUNC1(m);

        if (m->result == MOUNT_SUCCESS)
                m->result = f;

        FUNC7(FUNC0(m), m->result == MOUNT_SUCCESS, FUNC4(m->result));
        FUNC5(m, m->result != MOUNT_SUCCESS ? MOUNT_FAILED : MOUNT_DEAD);

        m->exec_runtime = FUNC3(m->exec_runtime, true);

        FUNC6(FUNC0(m), &m->exec_context);

        FUNC9(FUNC0(m), true);

        FUNC2(&m->dynamic_creds);

        /* Any dependencies based on /proc/self/mountinfo are now stale */
        FUNC8(FUNC0(m), UNIT_DEPENDENCY_MOUNTINFO_IMPLICIT);
}