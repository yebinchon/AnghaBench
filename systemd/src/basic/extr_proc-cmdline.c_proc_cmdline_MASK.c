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
 int ENOMEM ; 
 int /*<<< orphan*/  SIZE_MAX ; 
 int /*<<< orphan*/  FUNC0 (char**) ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 int FUNC3 (char*,char**) ; 
 char* FUNC4 (char*) ; 
 char* FUNC5 (char const*) ; 

int FUNC6(char **ret) {
        const char *e;
        FUNC0(ret);

        /* For testing purposes it is sometimes useful to be able to override what we consider /proc/cmdline to be */
        e = FUNC4("SYSTEMD_PROC_CMDLINE");
        if (e) {
                char *m;

                m = FUNC5(e);
                if (!m)
                        return -ENOMEM;

                *ret = m;
                return 0;
        }

        if (FUNC1() > 0)
                return FUNC2(1, SIZE_MAX, 0, ret);
        else
                return FUNC3("/proc/cmdline", ret);
}