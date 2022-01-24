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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  enum action { ____Placeholder_action } action ;

/* Variables and functions */
 int ACTION_EXIT ; 
 int /*<<< orphan*/  ACTION_HALT ; 
 int /*<<< orphan*/  ACTION_HIBERNATE ; 
 int /*<<< orphan*/  ACTION_HYBRID_SLEEP ; 
 int ACTION_KEXEC ; 
 int /*<<< orphan*/  ACTION_POWEROFF ; 
 int ACTION_REBOOT ; 
 int /*<<< orphan*/  ACTION_SUSPEND ; 
 int /*<<< orphan*/  ACTION_SUSPEND_THEN_HIBERNATE ; 
 int EINPROGRESS ; 
 int ENOENT ; 
 int EOPNOTSUPP ; 
 int ETIMEDOUT ; 
 int FUNC0 (int,int,int,...) ; 
 int arg_force ; 
 int arg_no_block ; 
 int /*<<< orphan*/  FUNC1 (char**) ; 
 int FUNC2 (int) ; 
 int FUNC3 () ; 
 int FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int FUNC8 () ; 
 int FUNC9 () ; 
 int FUNC10 () ; 
 int FUNC11 () ; 
 int FUNC12 (char*,int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int,char**,void*) ; 
 int FUNC15 (int,char**,void*) ; 
 int FUNC16 (char*,int) ; 
 int FUNC17 (char*) ; 

__attribute__((used)) static int FUNC18(int argc, char *argv[], void *userdata) {
        enum action a;
        int r;
        bool termination_action; /* an action that terminates the manager,
                                  * can be performed also by signal. */

        FUNC1(argv);

        a = FUNC17(argv[0]);

        r = FUNC6(a);
        if (r < 0)
                return r;

        if (arg_force >= 2) {
                r = FUNC8();
                if (r < 0)
                        return r;
        }

        r = FUNC11();
        if (r < 0)
                return r;

        r = FUNC10();
        if (r < 0)
                return r;

        r = FUNC9();
        if (r < 0)
                return r;

        if (a == ACTION_REBOOT && argc > 1) {
                r = FUNC16(argv[1], false);
                if (r < 0)
                        return r;

        } else if (a == ACTION_KEXEC) {
                r = FUNC3();
                if (r < 0 && arg_force >= 1)
                        FUNC5("Failed to load kexec kernel, continuing without.");
                else if (r < 0)
                        return r;

        } else if (a == ACTION_EXIT && argc > 1) {
                uint8_t code;

                /* If the exit code is not given on the command line,
                 * don't reset it to zero: just keep it as it might
                 * have been set previously. */

                r = FUNC12(argv[1], &code);
                if (r < 0)
                        return FUNC4(r, "Invalid exit code.");

                r = FUNC13(code);
                if (r < 0)
                        return r;
        }

        termination_action = FUNC0(a,
                                    ACTION_HALT,
                                    ACTION_POWEROFF,
                                    ACTION_REBOOT);
        if (termination_action && arg_force >= 2)
                return FUNC2(a);

        if (arg_force >= 1 &&
            (termination_action || FUNC0(a, ACTION_KEXEC, ACTION_EXIT)))
                r = FUNC15(argc, argv, userdata);
        else {
                /* First try logind, to allow authentication with polkit */
                if (FUNC0(a,
                           ACTION_POWEROFF,
                           ACTION_REBOOT,
                           ACTION_HALT,
                           ACTION_SUSPEND,
                           ACTION_HIBERNATE,
                           ACTION_HYBRID_SLEEP,
                           ACTION_SUSPEND_THEN_HIBERNATE)) {

                        r = FUNC7(a);
                        if (r >= 0)
                                return r;
                        if (FUNC0(r, -EOPNOTSUPP, -EINPROGRESS))
                                /* requested operation is not supported or already in progress */
                                return r;

                        /* On all other errors, try low-level operation. In order to minimize the difference between
                         * operation with and without logind, we explicitly enable non-blocking mode for this, as
                         * logind's shutdown operations are always non-blocking. */

                        arg_no_block = true;

                } else if (FUNC0(a, ACTION_EXIT, ACTION_KEXEC))
                        /* Since exit/kexec are so close in behaviour to power-off/reboot, let's also make them
                         * asynchronous, in order to not confuse the user needlessly with unexpected behaviour. */
                        arg_no_block = true;

                r = FUNC14(argc, argv, userdata);
        }

        if (termination_action && arg_force < 2 &&
            FUNC0(r, -ENOENT, -ETIMEDOUT))
                FUNC5("It is possible to perform action directly, see discussion of --force --force in man:systemctl(1).");

        return r;
}