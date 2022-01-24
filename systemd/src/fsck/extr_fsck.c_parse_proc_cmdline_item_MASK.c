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
 int arg_force ; 
 char* arg_repair ; 
 int arg_skip ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*,char const*) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 

__attribute__((used)) static int FUNC5(const char *key, const char *value, void *data) {
        int r;

        FUNC0(key);

        if (FUNC4(key, "fsck.mode")) {

                if (FUNC3(key, value))
                        return 0;

                if (FUNC4(value, "auto"))
                        arg_force = arg_skip = false;
                else if (FUNC4(value, "force"))
                        arg_force = true;
                else if (FUNC4(value, "skip"))
                        arg_skip = true;
                else
                        FUNC1("Invalid fsck.mode= parameter '%s'. Ignoring.", value);

        } else if (FUNC4(key, "fsck.repair")) {

                if (FUNC3(key, value))
                        return 0;

                if (FUNC4(value, "preen"))
                        arg_repair = "-a";
                else {
                        r = FUNC2(value);
                        if (r > 0)
                                arg_repair = "-y";
                        else if (r == 0)
                                arg_repair = "-n";
                        else
                                FUNC1("Invalid fsck.repair= parameter '%s'. Ignoring.", value);
                }
        }

#if HAVE_SYSV_COMPAT
        else if (streq(key, "fastboot") && !value) {
                log_warning("Please pass 'fsck.mode=skip' rather than 'fastboot' on the kernel command line.");
                arg_skip = true;

        } else if (streq(key, "forcefsck") && !value) {
                log_warning("Please pass 'fsck.mode=force' rather than 'forcefsck' on the kernel command line.");
                arg_force = true;
        }
#endif

        return 0;
}