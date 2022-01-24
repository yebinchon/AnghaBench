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
typedef  scalar_t__ uint64_t ;
struct TYPE_3__ {scalar_t__ startup_io_weight; scalar_t__ io_weight; } ;
typedef  int /*<<< orphan*/  ManagerState ;
typedef  TYPE_1__ CGroupContext ;

/* Variables and functions */
 scalar_t__ CGROUP_WEIGHT_DEFAULT ; 
 scalar_t__ CGROUP_WEIGHT_INVALID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MANAGER_INITIALIZING ; 
 int /*<<< orphan*/  MANAGER_STARTING ; 

__attribute__((used)) static uint64_t FUNC1(CGroupContext *c, ManagerState state) {
        if (FUNC0(state, MANAGER_STARTING, MANAGER_INITIALIZING) &&
            c->startup_io_weight != CGROUP_WEIGHT_INVALID)
                return c->startup_io_weight;
        else if (c->io_weight != CGROUP_WEIGHT_INVALID)
                return c->io_weight;
        else
                return CGROUP_WEIGHT_DEFAULT;
}