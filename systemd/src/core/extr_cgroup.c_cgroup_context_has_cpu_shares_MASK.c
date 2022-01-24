#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ cpu_shares; scalar_t__ startup_cpu_shares; } ;
typedef  TYPE_1__ CGroupContext ;

/* Variables and functions */
 scalar_t__ CGROUP_CPU_SHARES_INVALID ; 

__attribute__((used)) static bool FUNC0(CGroupContext *c) {
        return c->cpu_shares != CGROUP_CPU_SHARES_INVALID ||
                c->startup_cpu_shares != CGROUP_CPU_SHARES_INVALID;
}