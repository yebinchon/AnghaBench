#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uid_t ;
struct iovec_wrapper {int dummy; } ;
typedef  int /*<<< orphan*/  pid_t ;
struct TYPE_4__ {int /*<<< orphan*/  pid; } ;
typedef  TYPE_1__ Context ;

/* Variables and functions */
 int /*<<< orphan*/  SIZE_MAX ; 
 int /*<<< orphan*/  UID_FMT ; 
 int FUNC0 (char**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char**) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 int FUNC6 (int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,char**) ; 
 int FUNC10 (int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,char**) ; 
 int FUNC12 (struct iovec_wrapper*,char*,char*) ; 
 int FUNC13 (int,char*) ; 
 int /*<<< orphan*/  FUNC14 (int,char*) ; 
 char* FUNC15 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC16 (char const*,char**,int /*<<< orphan*/ *) ; 
 int FUNC17 (TYPE_1__*,struct iovec_wrapper*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC21 (char*,char*) ; 

__attribute__((used)) static int FUNC22(struct iovec_wrapper *iovw, Context *context) {
        uid_t owner_uid;
        pid_t pid;
        char *t;
        const char *p;
        int r;

        /* Note that if we fail on oom later on, we do not roll-back changes to the iovec
         * structure. (It remains valid, with the first iovec fields initialized.) */

        pid = context->pid;

        /* The following is mandatory */
        r = FUNC6(pid, &t);
        if (r < 0)
                return FUNC13(r, "Failed to get COMM: %m");

        r = FUNC12(iovw, "COREDUMP_COMM=", t);
        if (r < 0)
                return r;

        /* The following are optional but we used them if present */
        r = FUNC10(pid, &t);
        if (r >= 0)
                r = FUNC12(iovw, "COREDUMP_EXE=", t);
        if (r < 0)
                FUNC14(r, "Failed to get EXE, ignoring: %m");

        if (FUNC2(pid, &t) >= 0)
                (void) FUNC12(iovw, "COREDUMP_UNIT=", t);

        /* The next are optional */
        if (FUNC3(pid, &t) >= 0)
                (void) FUNC12(iovw, "COREDUMP_USER_UNIT=", t);

        if (FUNC19(pid, &t) >= 0)
                (void) FUNC12(iovw, "COREDUMP_SESSION=", t);

        if (FUNC18(pid, &owner_uid) >= 0) {
                r = FUNC0(&t, UID_FMT, owner_uid);
                if (r > 0)
                        (void) FUNC12(iovw, "COREDUMP_OWNER_UID=", t);
        }

        if (FUNC20(pid, &t) >= 0)
                (void) FUNC12(iovw, "COREDUMP_SLICE=", t);

        if (FUNC5(pid, SIZE_MAX, 0, &t) >= 0)
                (void) FUNC12(iovw, "COREDUMP_CMDLINE=", t);

        if (FUNC1(pid, NULL, &t) >= 0)
                (void) FUNC12(iovw, "COREDUMP_CGROUP=", t);

        if (FUNC4(pid, &t) >= 0)
                (void) FUNC12(iovw, "COREDUMP_OPEN_FDS=", t);

        p = FUNC15(pid, "status");
        if (FUNC16(p, &t, NULL) >= 0)
                (void) FUNC12(iovw, "COREDUMP_PROC_STATUS=", t);

        p = FUNC15(pid, "maps");
        if (FUNC16(p, &t, NULL) >= 0)
                (void) FUNC12(iovw, "COREDUMP_PROC_MAPS=", t);

        p = FUNC15(pid, "limits");
        if (FUNC16(p, &t, NULL) >= 0)
                (void) FUNC12(iovw, "COREDUMP_PROC_LIMITS=", t);

        p = FUNC15(pid, "cgroup");
        if (FUNC16(p, &t, NULL) >=0)
                (void) FUNC12(iovw, "COREDUMP_PROC_CGROUP=", t);

        p = FUNC15(pid, "mountinfo");
        if (FUNC16(p, &t, NULL) >=0)
                (void) FUNC12(iovw, "COREDUMP_PROC_MOUNTINFO=", t);

        if (FUNC8(pid, &t) >= 0)
                (void) FUNC12(iovw, "COREDUMP_CWD=", t);

        if (FUNC11(pid, &t) >= 0) {
                bool proc_self_root_is_slash;

                proc_self_root_is_slash = FUNC21(t, "/") == 0;

                (void) FUNC12(iovw, "COREDUMP_ROOT=", t);

                /* If the process' root is "/", then there is a chance it has
                 * mounted own root and hence being containerized. */
                if (proc_self_root_is_slash && FUNC7(pid, &t) > 0)
                        (void) FUNC12(iovw, "COREDUMP_CONTAINER_CMDLINE=", t);
        }

        if (FUNC9(pid, &t) >= 0)
                (void) FUNC12(iovw, "COREDUMP_ENVIRON=", t);

        /* we successfully acquired all metadata */
        return FUNC17(context, iovw);
}