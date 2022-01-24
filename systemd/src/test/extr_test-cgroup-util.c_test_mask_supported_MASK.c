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
typedef  int CGroupMask ;
typedef  scalar_t__ CGroupController ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 scalar_t__ _CGROUP_CONTROLLER_MAX ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int*) ; 
 char* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*) ; 
 char* FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(void) {

        CGroupMask m;
        CGroupController c;

        FUNC1(FUNC2(&m) >= 0);

        for (c = 0; c < _CGROUP_CONTROLLER_MAX; c++)
                FUNC4("'%s' is supported: %s\n", FUNC3(c), FUNC5(m & FUNC0(c)));
}