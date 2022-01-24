#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_4__ {int /*<<< orphan*/  manager; } ;
typedef  TYPE_1__ Unit ;
typedef  int /*<<< orphan*/  ManagerState ;
typedef  int /*<<< orphan*/  CGroupContext ;

/* Variables and functions */
 int /*<<< orphan*/  CGROUP_WEIGHT_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static uint64_t FUNC3(Unit *u) {
        ManagerState state = FUNC1(u->manager);
        CGroupContext *cc;

        cc = FUNC2(u);
        return cc ? FUNC0(cc, state) : CGROUP_WEIGHT_DEFAULT;
}