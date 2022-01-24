#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Unit ;
struct TYPE_7__ {int state; } ;
typedef  TYPE_1__ Mount ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
#define  MOUNT_CLEANING 137 
#define  MOUNT_MOUNTED 136 
#define  MOUNT_MOUNTING 135 
#define  MOUNT_MOUNTING_DONE 134 
#define  MOUNT_REMOUNTING 133 
#define  MOUNT_REMOUNTING_SIGKILL 132 
#define  MOUNT_REMOUNTING_SIGTERM 131 
 int /*<<< orphan*/  MOUNT_SUCCESS ; 
#define  MOUNT_UNMOUNTING 130 
#define  MOUNT_UNMOUNTING_SIGKILL 129 
#define  MOUNT_UNMOUNTING_SIGTERM 128 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int const) ; 

__attribute__((used)) static int FUNC6(Unit *u) {
        Mount *m = FUNC0(u);

        FUNC1(m);

        switch (m->state) {

        case MOUNT_UNMOUNTING:
        case MOUNT_UNMOUNTING_SIGKILL:
        case MOUNT_UNMOUNTING_SIGTERM:
                /* Already on it */
                return 0;

        case MOUNT_MOUNTING:
        case MOUNT_MOUNTING_DONE:
        case MOUNT_REMOUNTING:
                /* If we are still waiting for /bin/mount, we go directly into kill mode. */
                FUNC3(m, MOUNT_UNMOUNTING_SIGTERM, MOUNT_SUCCESS);
                return 0;

        case MOUNT_REMOUNTING_SIGTERM:
                /* If we are already waiting for a hung remount, convert this to the matching unmounting state */
                FUNC5(m, MOUNT_UNMOUNTING_SIGTERM);
                return 0;

        case MOUNT_REMOUNTING_SIGKILL:
                /* as above */
                FUNC5(m, MOUNT_UNMOUNTING_SIGKILL);
                return 0;

        case MOUNT_MOUNTED:
                FUNC4(m);
                return 1;

        case MOUNT_CLEANING:
                /* If we are currently cleaning, then abort it, brutally. */
                FUNC3(m, MOUNT_UNMOUNTING_SIGKILL, MOUNT_SUCCESS);
                return 0;

        default:
                FUNC2("Unexpected state.");
        }
}