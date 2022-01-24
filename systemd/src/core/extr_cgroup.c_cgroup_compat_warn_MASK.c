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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static void FUNC1(void) {
        static bool cgroup_compat_warned = false;

        if (cgroup_compat_warned)
                return;

        FUNC0("cgroup compatibility translation between legacy and unified hierarchy settings activated. "
                    "See cgroup-compat debug messages for details.");

        cgroup_compat_warned = true;
}