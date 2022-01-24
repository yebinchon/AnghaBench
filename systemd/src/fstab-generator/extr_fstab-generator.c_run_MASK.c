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
 int FUNC0 () ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 char const* arg_dest ; 
 char const* arg_dest_late ; 
 scalar_t__ arg_fstab_enabled ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (char const*) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int,char*) ; 
 int FUNC9 (int) ; 
 int /*<<< orphan*/  parse_proc_cmdline_item ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(const char *dest, const char *dest_early, const char *dest_late) {
        int r, r2 = 0, r3 = 0;

        FUNC4(arg_dest = dest);
        FUNC4(arg_dest_late = dest_late);

        r = FUNC10(parse_proc_cmdline_item, NULL, 0);
        if (r < 0)
                FUNC8(r, "Failed to parse kernel command line, ignoring: %m");

        (void) FUNC5();

        /* Always honour root= and usr= in the kernel command line if we are in an initrd */
        if (FUNC7()) {
                r = FUNC0();

                r2 = FUNC1();

                r3 = FUNC2();
        } else
                r = FUNC3();

        /* Honour /etc/fstab only when that's enabled */
        if (arg_fstab_enabled) {
                /* Parse the local /etc/fstab, possibly from the initrd */
                r2 = FUNC9(false);

                /* If running in the initrd also parse the /etc/fstab from the host */
                if (FUNC7())
                        r3 = FUNC9(true);
                else
                        r3 = FUNC6(arg_dest);
        }

        return r < 0 ? r : r2 < 0 ? r2 : r3;
}