#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct iovec_wrapper {int dummy; } ;
struct TYPE_5__ {scalar_t__ is_pid1; scalar_t__ is_journald; } ;
typedef  TYPE_1__ Context ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_CRIT ; 
 int /*<<< orphan*/  LOG_TARGET_JOURNAL_OR_KMSG ; 
 int /*<<< orphan*/  SD_MESSAGE_COREDUMP_STR ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct iovec_wrapper*,TYPE_1__*) ; 
 int FUNC3 (struct iovec_wrapper*,TYPE_1__*,int,char**) ; 
 struct iovec_wrapper* FUNC4 (struct iovec_wrapper*) ; 
 struct iovec_wrapper* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct iovec_wrapper*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (struct iovec_wrapper*,int /*<<< orphan*/ ) ; 
 int FUNC13 (TYPE_1__*,struct iovec_wrapper*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(int argc, char* argv[]) {
        Context context = {};
        struct iovec_wrapper *iovw;
        int r;

        FUNC7("Processing coredump received from the kernel...");

        iovw = FUNC5();
        if (!iovw)
                return FUNC9();

        (void) FUNC6(iovw, "MESSAGE_ID=", SD_MESSAGE_COREDUMP_STR);
        (void) FUNC6(iovw, "PRIORITY=", FUNC0(LOG_CRIT));

        /* Collect all process metadata passed by the kernel through argv[] */
        r = FUNC3(iovw, &context, argc - 1, argv + 1);
        if (r < 0)
                goto finish;

        /* Collect the rest of the process metadata retrieved from the runtime */
        r = FUNC2(iovw, &context);
        if (r < 0)
                goto finish;

        if (!context.is_journald) {
                /* OK, now we know it's not the journal, hence we can make use of it now. */
                FUNC11(LOG_TARGET_JOURNAL_OR_KMSG);
                FUNC10();
        }

        /* If this is PID 1 disable coredump collection, we'll unlikely be able to process
         * it later on.
         *
         * FIXME: maybe we should disable coredumps generation from the beginning and
         * re-enable it only when we know it's either safe (ie we're not running OOM) or
         * it's not pid1 ? */
        if (context.is_pid1) {
                FUNC8("Due to PID 1 having crashed coredump collection will now be turned off.");
                FUNC1();
        }

        if (context.is_journald || context.is_pid1)
                r = FUNC13(&context, iovw, STDIN_FILENO);
        else
                r = FUNC12(iovw, STDIN_FILENO);

 finish:
        iovw = FUNC4(iovw);
        return r;
}