#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ set; int /*<<< orphan*/  allocated; } ;
struct TYPE_7__ {TYPE_1__ nodes; } ;
typedef  TYPE_2__ NUMAPolicy ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  MPOL_DEFAULT ; 
 int /*<<< orphan*/  MPOL_LOCAL ; 
 scalar_t__ MPOL_PREFERRED ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (TYPE_2__ const*) ; 

bool FUNC5(const NUMAPolicy *policy) {
        FUNC2(policy);

        if (!FUNC3(FUNC4(policy)))
                return false;

        if (!policy->nodes.set &&
            !FUNC1(FUNC4(policy), MPOL_DEFAULT, MPOL_LOCAL, MPOL_PREFERRED))
                return false;

        if (policy->nodes.set &&
            FUNC4(policy) == MPOL_PREFERRED &&
            FUNC0(policy->nodes.allocated, policy->nodes.set) != 1)
                return false;

        return true;
}