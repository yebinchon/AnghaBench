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
typedef  char const* rlimit ;

/* Variables and functions */
 scalar_t__ SHOW_STATUS_YES ; 
 int /*<<< orphan*/  SPECIAL_DEFAULT_TARGET ; 
 scalar_t__ _SHOW_STATUS_INVALID ; 
 scalar_t__ arg_default_unit ; 
 scalar_t__ arg_show_status ; 
 int /*<<< orphan*/  FUNC0 (char const**) ; 
 int FUNC1 () ; 
 int FUNC2 (int,char**) ; 
 int /*<<< orphan*/  FUNC3 (char const* const*,char const* const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(
                int argc,
                char **argv,
                const struct rlimit *saved_rlimit_nofile,
                const struct rlimit *saved_rlimit_memlock,
                const char **ret_error_message) {
        int r;

        FUNC0(saved_rlimit_nofile);
        FUNC0(saved_rlimit_memlock);
        FUNC0(ret_error_message);

        (void) FUNC3(saved_rlimit_nofile, saved_rlimit_memlock);

        r = FUNC2(argc, argv);
        if (r < 0) {
                *ret_error_message = "Failed to parse commandline arguments";
                return r;
        }

        /* Initialize default unit */
        if (!arg_default_unit) {
                arg_default_unit = FUNC4(SPECIAL_DEFAULT_TARGET);
                if (!arg_default_unit) {
                        *ret_error_message = "Failed to set default unit";
                        return FUNC1();
                }
        }

        /* Initialize the show status setting if it hasn't been set explicitly yet */
        if (arg_show_status == _SHOW_STATUS_INVALID)
                arg_show_status = SHOW_STATUS_YES;

        return 0;
}