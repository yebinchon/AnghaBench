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
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char const*,char const*,scalar_t__) ; 
 int FUNC2 (char const*,char const*) ; 

int FUNC3(const char *controller, const char *path, pid_t pid) {
        int r, q;

        FUNC0(pid >= 0);

        r = FUNC2(controller, path);
        if (r < 0)
                return r;

        q = FUNC1(controller, path, pid);
        if (q < 0)
                return q;

        /* This does not remove the cgroup on failure */
        return r;
}