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
typedef  int /*<<< orphan*/  usec_t ;
typedef  int /*<<< orphan*/  AskPasswordFlags ;

/* Variables and functions */
 int /*<<< orphan*/  ACQUIRE_TERMINAL_WAIT ; 
 int /*<<< orphan*/  USEC_INFINITY ; 
 int FUNC0 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ arg_console ; 
 scalar_t__ arg_device ; 
 int FUNC1 (int,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,char***) ; 
 int FUNC2 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int,int) ; 
 int FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(
                const char *message,
                usec_t until,
                AskPasswordFlags flags,
                const char *flag_file,
                char ***ret) {

        int tty_fd = -1;
        int r;

        if (arg_console) {
                const char *con = arg_device ?: "/dev/console";

                tty_fd = FUNC0(con, ACQUIRE_TERMINAL_WAIT, USEC_INFINITY);
                if (tty_fd < 0)
                        return FUNC2(tty_fd, "Failed to acquire %s: %m", con);

                r = FUNC5(tty_fd, true);
                if (r < 0)
                        FUNC3(r, "Failed to reset terminal, ignoring: %m");

        }

        r = FUNC1(tty_fd, message, NULL, until, flags, flag_file, ret);

        if (arg_console) {
                tty_fd = FUNC6(tty_fd);
                FUNC4();
        }

        return 0;
}