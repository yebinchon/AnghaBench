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
 int CGROUP_UNIFIED_SYSTEMD ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  unified_systemd_v232 ; 

int FUNC1(void) {
        int r;

        r = FUNC0(false);
        if (r < 0)
                return r;

        return r == CGROUP_UNIFIED_SYSTEMD && !unified_systemd_v232;
}