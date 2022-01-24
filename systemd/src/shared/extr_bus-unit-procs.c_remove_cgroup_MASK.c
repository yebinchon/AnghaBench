#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct CGroupInfo {TYPE_1__* parent; int /*<<< orphan*/  pids; struct CGroupInfo* cgroup_path; int /*<<< orphan*/  is_const; struct CGroupInfo* children; } ;
struct TYPE_2__ {int /*<<< orphan*/  children; } ;
typedef  struct CGroupInfo Hashmap ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct CGroupInfo*) ; 
 int /*<<< orphan*/  FUNC1 (struct CGroupInfo*) ; 
 int /*<<< orphan*/  FUNC2 (struct CGroupInfo*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct CGroupInfo*,struct CGroupInfo*) ; 
 int /*<<< orphan*/  siblings ; 

__attribute__((used)) static void FUNC5(Hashmap *cgroups, struct CGroupInfo *cg) {
        FUNC1(cgroups);
        FUNC1(cg);

        while (cg->children)
                FUNC5(cgroups, cg->children);

        FUNC4(cgroups, cg->cgroup_path);

        if (!cg->is_const)
                FUNC2(cg->cgroup_path);

        FUNC3(cg->pids);

        if (cg->parent)
                FUNC0(siblings, cg->parent->children, cg);

        FUNC2(cg);
}