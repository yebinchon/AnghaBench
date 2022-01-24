#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ set; } ;
struct TYPE_14__ {scalar_t__ set; } ;
struct TYPE_16__ {scalar_t__ cpu_quota_per_sec_usec; scalar_t__ memory_limit; scalar_t__ device_policy; scalar_t__ tasks_max; scalar_t__ tasks_accounting; scalar_t__ device_allow; scalar_t__ memory_accounting; TYPE_2__ cpuset_mems; TYPE_1__ cpuset_cpus; scalar_t__ cpu_accounting; } ;
typedef  TYPE_3__ Unit ;
typedef  int CGroupMask ;
typedef  TYPE_3__ CGroupContext ;

/* Variables and functions */
 scalar_t__ CGROUP_DEVICE_POLICY_AUTO ; 
 scalar_t__ CGROUP_LIMIT_MAX ; 
 int CGROUP_MASK_BLKIO ; 
 int CGROUP_MASK_BPF_DEVICES ; 
 int CGROUP_MASK_CPU ; 
 int CGROUP_MASK_CPUSET ; 
 int CGROUP_MASK_DEVICES ; 
 int FUNC0 (int) ; 
 int CGROUP_MASK_IO ; 
 int CGROUP_MASK_MEMORY ; 
 int CGROUP_MASK_PIDS ; 
 scalar_t__ USEC_INFINITY ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (TYPE_3__*) ; 
 int FUNC6 () ; 
 TYPE_3__* FUNC7 (TYPE_3__*) ; 
 scalar_t__ FUNC8 (TYPE_3__*) ; 

__attribute__((used)) static CGroupMask FUNC9(Unit *u) {
        CGroupMask mask = 0;
        CGroupContext *c;

        FUNC1(u);

        c = FUNC7(u);

        FUNC1(c);

        /* Figure out which controllers we need, based on the cgroup context object */

        if (c->cpu_accounting)
                mask |= FUNC6();

        if (FUNC4(c) ||
            FUNC3(c) ||
            c->cpu_quota_per_sec_usec != USEC_INFINITY)
                mask |= CGROUP_MASK_CPU;

        if (c->cpuset_cpus.set || c->cpuset_mems.set)
                mask |= CGROUP_MASK_CPUSET;

        if (FUNC5(c) || FUNC2(c))
                mask |= CGROUP_MASK_IO | CGROUP_MASK_BLKIO;

        if (c->memory_accounting ||
            c->memory_limit != CGROUP_LIMIT_MAX ||
            FUNC8(u))
                mask |= CGROUP_MASK_MEMORY;

        if (c->device_allow ||
            c->device_policy != CGROUP_DEVICE_POLICY_AUTO)
                mask |= CGROUP_MASK_DEVICES | CGROUP_MASK_BPF_DEVICES;

        if (c->tasks_accounting ||
            c->tasks_max != CGROUP_LIMIT_MAX)
                mask |= CGROUP_MASK_PIDS;

        return FUNC0(mask);
}