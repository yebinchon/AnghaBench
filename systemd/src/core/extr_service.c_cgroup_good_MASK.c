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
struct TYPE_2__ {int /*<<< orphan*/  cgroup_path; } ;
typedef  int /*<<< orphan*/  Service ;

/* Variables and functions */
 int /*<<< orphan*/  SYSTEMD_CGROUP_CONTROLLER ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(Service *s) {
        int r;

        FUNC1(s);

        /* Returns 0 if the cgroup is empty or doesn't exist, > 0 if it is exists and is populated, < 0 if we can't
         * figure it out */

        if (!FUNC0(s)->cgroup_path)
                return 0;

        r = FUNC2(SYSTEMD_CGROUP_CONTROLLER, FUNC0(s)->cgroup_path);
        if (r < 0)
                return r;

        return r == 0;
}