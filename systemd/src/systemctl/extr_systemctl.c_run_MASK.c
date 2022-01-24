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
#define  ACTION_CANCEL_SHUTDOWN 149 
#define  ACTION_DEFAULT 148 
#define  ACTION_EMERGENCY 147 
#define  ACTION_EXIT 146 
#define  ACTION_HALT 145 
#define  ACTION_HIBERNATE 144 
#define  ACTION_HYBRID_SLEEP 143 
#define  ACTION_KEXEC 142 
#define  ACTION_POWEROFF 141 
#define  ACTION_REBOOT 140 
#define  ACTION_REEXEC 139 
#define  ACTION_RELOAD 138 
#define  ACTION_RESCUE 137 
#define  ACTION_RUNLEVEL 136 
#define  ACTION_RUNLEVEL2 135 
#define  ACTION_RUNLEVEL3 134 
#define  ACTION_RUNLEVEL4 133 
#define  ACTION_RUNLEVEL5 132 
#define  ACTION_SUSPEND 131 
#define  ACTION_SUSPEND_THEN_HIBERNATE 130 
#define  ACTION_SYSTEMCTL 129 
 int /*<<< orphan*/  HIGH_RLIMIT_NOFILE ; 
 int /*<<< orphan*/  LC_ALL ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
#define  _ACTION_INVALID 128 
 int arg_action ; 
 int /*<<< orphan*/  arg_quiet ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  original_stdout_is_tty ; 
 int FUNC7 (int,char**) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 () ; 
 scalar_t__ FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int FUNC15 () ; 
 int FUNC16 (int,char**) ; 

__attribute__((used)) static int FUNC17(int argc, char *argv[]) {
        int r;

        FUNC13(LC_ALL, "");
        FUNC5();
        FUNC4();

        /* The journal merging logic potentially needs a lot of fds. */
        (void) FUNC10(HIGH_RLIMIT_NOFILE);

        FUNC14();

        /* Explicitly not on_tty() to avoid setting cached value.
         * This becomes relevant for piping output which might be
         * ellipsized. */
        original_stdout_is_tty = FUNC2(STDOUT_FILENO);

        r = FUNC7(argc, argv);
        if (r <= 0)
                goto finish;

        if (arg_action != ACTION_SYSTEMCTL && FUNC12() > 0) {
                if (!arg_quiet)
                        FUNC3("Running in chroot, ignoring request.");
                r = 0;
                goto finish;
        }

        /* systemctl_main() will print an error message for the bus
         * connection, but only if it needs to */

        switch (arg_action) {

        case ACTION_SYSTEMCTL:
                r = FUNC16(argc, argv);
                break;

        /* Legacy command aliases set arg_action. They provide some fallbacks,
         * e.g. to tell sysvinit to reboot after you have installed systemd
         * binaries. */

        case ACTION_HALT:
        case ACTION_POWEROFF:
        case ACTION_REBOOT:
        case ACTION_KEXEC:
                r = FUNC1();
                break;

        case ACTION_RUNLEVEL2:
        case ACTION_RUNLEVEL3:
        case ACTION_RUNLEVEL4:
        case ACTION_RUNLEVEL5:
        case ACTION_RESCUE:
                r = FUNC15();
                break;

        case ACTION_RELOAD:
        case ACTION_REEXEC:
                r = FUNC9();
                break;

        case ACTION_CANCEL_SHUTDOWN:
                r = FUNC6();
                break;

        case ACTION_RUNLEVEL:
                r = FUNC11();
                break;

        case ACTION_EXIT:
        case ACTION_SUSPEND:
        case ACTION_HIBERNATE:
        case ACTION_HYBRID_SLEEP:
        case ACTION_SUSPEND_THEN_HIBERNATE:
        case ACTION_EMERGENCY:
        case ACTION_DEFAULT:
                /* systemctl verbs with no equivalent in the legacy commands.
                 * These cannot appear in arg_action.  Fall through. */

        case _ACTION_INVALID:
        default:
                FUNC0("Unknown action");
        }

finish:
        FUNC8();

        /* Note that we return r here, not 0, so that we can implement the LSB-like return codes */
        return r;
}