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
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int FUNC1 (int,char*,char const*,...) ; 
 int FUNC2 (char const*,char const*) ; 
 char* FUNC3 (char*,char const*) ; 
 int FUNC4 (char const*,char const*,int) ; 

__attribute__((used)) static int FUNC5(const char *target, const char *alias) {
        const char *a;
        int r;

        FUNC0(target);
        FUNC0(alias);

        a = FUNC3("/sys/fs/cgroup/", alias);

        r = FUNC4(target, a, false);
        if (r < 0)
                return FUNC1(r, "Failed to create symlink %s: %m", a);

#ifdef SMACK_RUN_LABEL
        const char *p;

        p = strjoina("/sys/fs/cgroup/", target);

        r = mac_smack_copy(a, p);
        if (r < 0 && r != -EOPNOTSUPP)
                return log_error_errno(r, "Failed to copy smack label from %s to %s: %m", p, a);
#endif

        return 0;
}