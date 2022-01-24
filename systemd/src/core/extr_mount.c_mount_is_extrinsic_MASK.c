#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  manager; } ;
struct TYPE_10__ {int /*<<< orphan*/  where; } ;
struct TYPE_9__ {int /*<<< orphan*/  options; } ;
typedef  TYPE_1__ MountParameters ;
typedef  TYPE_2__ Mount ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,char*,char*,char*) ; 
 TYPE_7__* FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static bool FUNC8(Mount *m) {
        MountParameters *p;
        FUNC4(m);

        /* Returns true for all units that are "magic" and should be excluded from the usual start-up and shutdown
         * dependencies. We call them "extrinsic" here, as they are generally mounted outside of the systemd dependency
         * logic. We shouldn't attempt to manage them ourselves but it's fine if the user operates on them with us. */

        if (!FUNC0(FUNC3(m)->manager)) /* We only automatically manage mounts if we are in system mode */
                return true;

        if (FUNC1(m->where,  /* Don't bother with the OS data itself */
                        "/",
                        "/usr"))
                return true;

        if (FUNC2(m->where,
                                "/run/initramfs",    /* This should stay around from before we boot until after we shutdown */
                                "/proc",             /* All of this is API VFS */
                                "/sys",              /* … dito … */
                                "/dev"))             /* … dito … */
                return true;

        /* If this is an initrd mount, and we are not in the initrd, then leave this around forever, too. */
        p = FUNC6(m);
        if (p && FUNC5(p->options, "x-initrd.mount\0") && !FUNC7())
                return true;

        return false;
}