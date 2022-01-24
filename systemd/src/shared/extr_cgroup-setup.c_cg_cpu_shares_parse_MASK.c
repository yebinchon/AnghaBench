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
typedef  scalar_t__ uint64_t ;

/* Variables and functions */
 scalar_t__ CGROUP_CPU_SHARES_INVALID ; 
 scalar_t__ CGROUP_CPU_SHARES_MAX ; 
 scalar_t__ CGROUP_CPU_SHARES_MIN ; 
 int ERANGE ; 
 scalar_t__ FUNC0 (char const*) ; 
 int FUNC1 (char const*,scalar_t__*) ; 

int FUNC2(const char *s, uint64_t *ret) {
        uint64_t u;
        int r;

        if (FUNC0(s)) {
                *ret = CGROUP_CPU_SHARES_INVALID;
                return 0;
        }

        r = FUNC1(s, &u);
        if (r < 0)
                return r;

        if (u < CGROUP_CPU_SHARES_MIN || u > CGROUP_CPU_SHARES_MAX)
                return -ERANGE;

        *ret = u;
        return 0;
}