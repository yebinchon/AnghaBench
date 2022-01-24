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
typedef  int /*<<< orphan*/  Unit ;
struct TYPE_8__ {scalar_t__ state; } ;
typedef  TYPE_1__ Mount ;

/* Variables and functions */
 int EAGAIN ; 
 TYPE_1__* FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MOUNT_CLEANING ; 
 int /*<<< orphan*/  MOUNT_DEAD ; 
 int /*<<< orphan*/  MOUNT_FAILED ; 
 int /*<<< orphan*/  MOUNT_FAILURE_START_LIMIT_HIT ; 
 scalar_t__ MOUNT_MOUNTING ; 
 int /*<<< orphan*/  MOUNT_UNMOUNTING ; 
 int /*<<< orphan*/  MOUNT_UNMOUNTING_SIGKILL ; 
 int /*<<< orphan*/  MOUNT_UNMOUNTING_SIGTERM ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(Unit *u) {
        Mount *m = FUNC1(u);
        int r;

        FUNC2(m);

        /* We cannot fulfill this request right now, try again later
         * please! */
        if (FUNC0(m->state,
                   MOUNT_UNMOUNTING,
                   MOUNT_UNMOUNTING_SIGTERM,
                   MOUNT_UNMOUNTING_SIGKILL,
                   MOUNT_CLEANING))
                return -EAGAIN;

        /* Already on it! */
        if (m->state == MOUNT_MOUNTING)
                return 0;

        FUNC2(FUNC0(m->state, MOUNT_DEAD, MOUNT_FAILED));

        r = FUNC7(u);
        if (r < 0) {
                FUNC4(m, MOUNT_FAILURE_START_LIMIT_HIT);
                return r;
        }

        r = FUNC6(u);
        if (r < 0)
                return r;

        FUNC3(m);
        FUNC5(m);

        return 1;
}