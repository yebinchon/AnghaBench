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
 scalar_t__ ACTION_QUERY ; 
 scalar_t__ arg_action ; 
 scalar_t__ arg_console ; 
 scalar_t__ arg_device ; 
 int FUNC0 (char**) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int,char**) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(int argc, char *argv[]) {
        int r;

        FUNC1();

        FUNC6(0022);

        r = FUNC2(argc, argv);
        if (r <= 0)
                return r;

        if (arg_console && !arg_device)
                /*
                 * Spawn a separate process for each console device.
                 */
                return FUNC0(argv);

        if (arg_device) {
                /*
                 * Later on, a controlling terminal will be acquired,
                 * therefore the current process has to become a session
                 * leader and should not have a controlling terminal already.
                 */
                (void) FUNC5();
                (void) FUNC4();
        }

        return FUNC3(arg_action != ACTION_QUERY);
}