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
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  LOG_TARGET_KMSG ; 
 int /*<<< orphan*/  PR_SET_DUMPABLE ; 
 int /*<<< orphan*/  SD_LISTEN_FDS_START ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  arg_compress ; 
 int /*<<< orphan*/  arg_storage ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int,char**) ; 
 int FUNC9 (int,char**) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int) ; 
 scalar_t__ FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(int argc, char *argv[]) {
        int r;

        /* First, log to a safe place, since we don't know what crashed and it might
         * be journald which we'd rather not log to then. */

        FUNC5(LOG_TARGET_KMSG);
        FUNC4();

        /* Make sure we never enter a loop */
        (void) FUNC7(PR_SET_DUMPABLE, 0);

        /* Ignore all parse errors */
        (void) FUNC6();

        FUNC2("Selected storage '%s'.", FUNC1(arg_storage));
        FUNC2("Selected compression %s.", FUNC13(arg_compress));

        r = FUNC11(false);
        if (r < 0)
                return FUNC3(r, "Failed to determine the number of file descriptors: %m");

        /* If we got an fd passed, we are running in coredumpd mode. Otherwise we
         * are invoked from the kernel as coredump handler. */
        if (r == 0) {
                if (FUNC12(argv[1], "--backtrace"))
                        return FUNC8(argc, argv);
                else
                        return FUNC9(argc, argv);
        } else if (r == 1)
                return FUNC10(SD_LISTEN_FDS_START);

        return FUNC3(FUNC0(EINVAL),
                               "Received unexpected number of file descriptors.");
}