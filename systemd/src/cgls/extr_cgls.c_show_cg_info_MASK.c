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
 int /*<<< orphan*/  SYSTEMD_CGROUP_CONTROLLER ; 
 scalar_t__ FUNC0 () ; 
 char* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(const char *controller, const char *path) {

        if (FUNC0() == 0 && controller && !FUNC4(controller, SYSTEMD_CGROUP_CONTROLLER))
                FUNC3("Controller %s; ", controller);

        FUNC3("Control group %s:\n", FUNC1(path));
        FUNC2(stdout);
}