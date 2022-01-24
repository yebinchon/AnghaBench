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
 int arg_skip ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (char const*,char const*) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 

__attribute__((used)) static int FUNC3(const char *key, const char *value, void *data) {

        if (FUNC2(key, "quotacheck.mode")) {

                if (FUNC1(key, value))
                        return 0;

                if (FUNC2(value, "auto"))
                        arg_force = arg_skip = false;
                else if (FUNC2(value, "force"))
                        arg_force = true;
                else if (FUNC2(value, "skip"))
                        arg_skip = true;
                else
                        FUNC0("Invalid quotacheck.mode= parameter '%s'. Ignoring.", value);
        }

#if HAVE_SYSV_COMPAT
        else if (streq(key, "forcequotacheck") && !value) {
                log_warning("Please use 'quotacheck.mode=force' rather than 'forcequotacheck' on the kernel command line.");
                arg_force = true;
        }
#endif

        return 0;
}