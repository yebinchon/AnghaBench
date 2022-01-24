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
struct TYPE_6__ {scalar_t__ from_proc_self_mountinfo; } ;
typedef  int /*<<< orphan*/  MountResult ;
typedef  TYPE_1__ Mount ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(Mount *m, MountResult f) {
        FUNC0(m);

        /* Enter DEAD or MOUNTED state, depending on what the kernel currently says about the mount point. We use this
         * whenever we executed an operation, so that our internal state reflects what the kernel says again, after all
         * ultimately we just mirror the kernel's internal state on this. */

        if (m->from_proc_self_mountinfo)
                FUNC2(m, f);
        else
                FUNC1(m, f);
}