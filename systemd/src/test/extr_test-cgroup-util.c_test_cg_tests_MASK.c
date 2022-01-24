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
 int ENOMEDIUM ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SYSTEMD_CGROUP_CONTROLLER ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 int FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 

__attribute__((used)) static void FUNC7(void) {
        int all, hybrid, systemd, r;

        r = FUNC4();
        if (r == -ENOMEDIUM) {
                FUNC6(r, "Skipping cg hierarchy tests: %m");
                return;
        }
        FUNC1(r >= 0);

        all = FUNC2();
        FUNC1(FUNC0(all, 0, 1));

        hybrid = FUNC3();
        FUNC1(FUNC0(hybrid, 0, 1));

        systemd = FUNC5(SYSTEMD_CGROUP_CONTROLLER);
        FUNC1(FUNC0(systemd, 0, 1));

        if (all) {
                FUNC1(systemd);
                FUNC1(!hybrid);

        } else if (hybrid) {
                FUNC1(systemd);
                FUNC1(!all);

        } else
                FUNC1(!systemd);
}