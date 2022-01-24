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
typedef  int /*<<< orphan*/  JsonVariant ;
typedef  int /*<<< orphan*/  JsonDispatchFlags ;

/* Variables and functions */
 unsigned long CLONE_NEWCGROUP ; 
 unsigned long CLONE_NEWIPC ; 
 unsigned long CLONE_NEWNET ; 
 unsigned long CLONE_NEWNS ; 
 unsigned long CLONE_NEWPID ; 
 unsigned long CLONE_NEWUSER ; 
 unsigned long CLONE_NEWUTS ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const*) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 

__attribute__((used)) static int FUNC6(const char *name, JsonVariant *v, JsonDispatchFlags flags, void *userdata) {
        unsigned long *nsflags = userdata;
        const char *n;

        FUNC1(nsflags);
        FUNC2(n = FUNC4(v));

        /* We don't use namespace_flags_from_string() here, as the OCI spec uses slightly different names than the
         * kernel here. */
        if (FUNC5(n, "pid"))
                *nsflags = CLONE_NEWPID;
        else if (FUNC5(n, "network"))
                *nsflags = CLONE_NEWNET;
        else if (FUNC5(n, "mount"))
                *nsflags = CLONE_NEWNS;
        else if (FUNC5(n, "ipc"))
                *nsflags = CLONE_NEWIPC;
        else if (FUNC5(n, "uts"))
                *nsflags = CLONE_NEWUTS;
        else if (FUNC5(n, "user"))
                *nsflags = CLONE_NEWUSER;
        else if (FUNC5(n, "cgroup"))
                *nsflags = CLONE_NEWCGROUP;
        else
                return FUNC3(v, flags, FUNC0(EINVAL),
                                "Unknown cgroup type, refusing: %s", n);

        return 0;
}