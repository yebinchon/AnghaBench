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
struct rlimit {int dummy; } ;

/* Variables and functions */
 scalar_t__ ACTION_RUN ; 
 scalar_t__ NSEC_INFINITY ; 
 int /*<<< orphan*/  PR_SET_CHILD_SUBREAPER ; 
 int /*<<< orphan*/  PR_SET_NO_NEW_PRIVS ; 
 int /*<<< orphan*/  PR_SET_TIMERSLACK ; 
 scalar_t__ arg_action ; 
 int /*<<< orphan*/  arg_capability_bounding_set ; 
 int /*<<< orphan*/  arg_machine_id ; 
 scalar_t__ arg_no_new_privs ; 
 int /*<<< orphan*/  arg_runtime_watchdog ; 
 scalar_t__ arg_syscall_archs ; 
 scalar_t__ arg_system ; 
 scalar_t__ arg_timer_slack_nsec ; 
 scalar_t__ arg_watchdog_device ; 
 int /*<<< orphan*/  FUNC0 (char const**) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct rlimit*) ; 
 int /*<<< orphan*/  FUNC3 (struct rlimit*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (scalar_t__) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int FUNC11 (int,char*) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC15 () ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 (int) ; 
 int FUNC22 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 () ; 

__attribute__((used)) static int FUNC25(
                bool skip_setup,
                struct rlimit *saved_rlimit_nofile,
                struct rlimit *saved_rlimit_memlock,
                const char **ret_error_message) {
        int r;

        FUNC0(ret_error_message);

        /* Sets up various runtime parameters. Many of these initializations are conditionalized:
         *
         * - Some only apply to --system instances
         * - Some only apply to --user instances
         * - Some only apply when we first start up, but not when we reexecute
         */

        if (arg_action != ACTION_RUN)
                return 0;

        FUNC20(skip_setup);
        FUNC21(skip_setup);

        if (arg_system) {
                /* Make sure we leave a core dump without panicking the kernel. */
                FUNC10();

                if (!skip_setup) {
                        r = FUNC15();
                        if (r < 0) {
                                *ret_error_message = "Failed to mount cgroup hierarchies";
                                return r;
                        }

                        FUNC17();
                        FUNC9();
                        FUNC14(NULL, arg_machine_id, NULL);
                        FUNC13();
                        FUNC4();
                        FUNC1();
                        FUNC18();
                        FUNC24();
                }

                if (arg_watchdog_device) {
                        r = FUNC22(arg_watchdog_device);
                        if (r < 0)
                                FUNC12(r, "Failed to set watchdog device to %s, ignoring: %m", arg_watchdog_device);
                }

                if (FUNC19(arg_runtime_watchdog))
                        FUNC23(&arg_runtime_watchdog);
        }

        if (arg_timer_slack_nsec != NSEC_INFINITY)
                if (FUNC16(PR_SET_TIMERSLACK, arg_timer_slack_nsec) < 0)
                        FUNC12(errno, "Failed to adjust timer slack, ignoring: %m");

        if (arg_system && !FUNC5(arg_capability_bounding_set)) {
                r = FUNC7(arg_capability_bounding_set);
                if (r < 0) {
                        *ret_error_message = "Failed to drop capability bounding set of usermode helpers";
                        return FUNC11(r, "Failed to drop capability bounding set of usermode helpers: %m");
                }

                r = FUNC6(arg_capability_bounding_set, true);
                if (r < 0) {
                        *ret_error_message = "Failed to drop capability bounding set";
                        return FUNC11(r, "Failed to drop capability bounding set: %m");
                }
        }

        if (arg_system && arg_no_new_privs) {
                if (FUNC16(PR_SET_NO_NEW_PRIVS, 1, 0, 0, 0) < 0) {
                        *ret_error_message = "Failed to disable new privileges";
                        return FUNC11(errno, "Failed to disable new privileges: %m");
                }
        }

        if (arg_syscall_archs) {
                r = FUNC8(arg_syscall_archs);
                if (r < 0) {
                        *ret_error_message = "Failed to set syscall architectures";
                        return r;
                }
        }

        if (!arg_system)
                /* Become reaper of our children */
                if (FUNC16(PR_SET_CHILD_SUBREAPER, 1) < 0)
                        FUNC12(errno, "Failed to make us a subreaper: %m");

        /* Bump up RLIMIT_NOFILE for systemd itself */
        (void) FUNC3(saved_rlimit_nofile);
        (void) FUNC2(saved_rlimit_memlock);

        return 0;
}