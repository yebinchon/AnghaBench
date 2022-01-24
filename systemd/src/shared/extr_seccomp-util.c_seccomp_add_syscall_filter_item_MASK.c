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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  char const scmp_filter_ctx ;
typedef  int /*<<< orphan*/  SyscallFilterSet ;

/* Variables and functions */
 int EDOM ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int __NR_SCMP_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int FUNC3 (int,char*,char const*,...) ; 
 int FUNC4 (char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,char**,int) ; 
 int FUNC5 (char const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (char const*) ; 
 scalar_t__ FUNC7 (char**,char const*) ; 
 int /*<<< orphan*/ * FUNC8 (char const*) ; 

int FUNC9(scmp_filter_ctx *seccomp, const char *name, uint32_t action, char **exclude, bool log_missing) {
        FUNC1(seccomp);
        FUNC1(name);

        if (FUNC7(exclude, name))
                return 0;

        if (name[0] == '@') {
                const SyscallFilterSet *other;

                other = FUNC8(name);
                if (!other)
                        return FUNC3(FUNC0(EINVAL),
                                               "Filter set %s is not known!",
                                               name);

                return FUNC4(seccomp, other, action, exclude, log_missing);

        } else {
                int id, r;

                id = FUNC6(name);
                if (id == __NR_SCMP_ERROR) {
                        if (log_missing)
                                FUNC2("System call %s is not known, ignoring.", name);
                        return 0;
                }

                r = FUNC5(seccomp, action, id, 0);
                if (r < 0) {
                        /* If the system call is not known on this architecture, then that's fine, let's ignore it */
                        bool ignore = r == -EDOM;

                        if (!ignore || log_missing)
                                FUNC3(r, "Failed to add rule for system call %s() / %d%s: %m",
                                                name, id, ignore ? ", ignoring" : "");
                        if (!ignore)
                                return r;
                }

                return 0;
        }
}