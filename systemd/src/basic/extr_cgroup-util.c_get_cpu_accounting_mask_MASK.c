#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct utsname {int /*<<< orphan*/  release; } ;
typedef  scalar_t__ CGroupMask ;

/* Variables and functions */
 scalar_t__ CGROUP_MASK_CPU ; 
 scalar_t__ CGROUP_MASK_CPUACCT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (struct utsname*) ; 

CGroupMask FUNC4(void) {
        static CGroupMask needed_mask = (CGroupMask) -1;

        /* On kernel ≥4.15 with unified hierarchy, cpu.stat's usage_usec is
         * provided externally from the CPU controller, which means we don't
         * need to enable the CPU controller just to get metrics. This is good,
         * because enabling the CPU controller comes at a minor performance
         * hit, especially when it's propagated deep into large hierarchies.
         * There's also no separate CPU accounting controller available within
         * a unified hierarchy.
         *
         * This combination of factors results in the desired cgroup mask to
         * enable for CPU accounting varying as follows:
         *
         *                   ╔═════════════════════╤═════════════════════╗
         *                   ║     Linux ≥4.15     │     Linux <4.15     ║
         *   ╔═══════════════╬═════════════════════╪═════════════════════╣
         *   ║ Unified       ║ nothing             │ CGROUP_MASK_CPU     ║
         *   ╟───────────────╫─────────────────────┼─────────────────────╢
         *   ║ Hybrid/Legacy ║ CGROUP_MASK_CPUACCT │ CGROUP_MASK_CPUACCT ║
         *   ╚═══════════════╩═════════════════════╧═════════════════════╝
         *
         * We check kernel version here instead of manually checking whether
         * cpu.stat is present for every cgroup, as that check in itself would
         * already be fairly expensive.
         *
         * Kernels where this patch has been backported will therefore have the
         * CPU controller enabled unnecessarily. This is more expensive than
         * necessary, but harmless. ☺️
         */

        if (needed_mask == (CGroupMask) -1) {
                if (FUNC1()) {
                        struct utsname u;
                        FUNC0(FUNC3(&u) >= 0);

                        if (FUNC2(u.release, "4.15") < 0)
                                needed_mask = CGROUP_MASK_CPU;
                        else
                                needed_mask = 0;
                } else
                        needed_mask = CGROUP_MASK_CPUACCT;
        }

        return needed_mask;
}