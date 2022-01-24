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
typedef  scalar_t__ VolatileMode ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,char*,char*) ; 
 scalar_t__ VOLATILE_YES ; 
 int arg_fstab_enabled ; 
 int /*<<< orphan*/  arg_root_fstype ; 
 int /*<<< orphan*/  arg_root_hash ; 
 int /*<<< orphan*/  arg_root_options ; 
 int arg_root_rw ; 
 int /*<<< orphan*/  arg_root_what ; 
 int /*<<< orphan*/  arg_usr_fstype ; 
 int /*<<< orphan*/  arg_usr_options ; 
 int /*<<< orphan*/  arg_usr_what ; 
 scalar_t__ arg_volatile_mode ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (char const*,char const*) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (char const*) ; 

__attribute__((used)) static int FUNC9(const char *key, const char *value, void *data) {
        int r;

        /* root=, usr=, usrfstype= and roofstype= may occur more than once, the last
         * instance should take precedence.  In the case of multiple rootflags=
         * or usrflags= the arguments should be concatenated */

        if (FUNC0(key, "fstab", "rd.fstab")) {

                r = value ? FUNC4(value) : 1;
                if (r < 0)
                        FUNC3("Failed to parse fstab switch %s. Ignoring.", value);
                else
                        arg_fstab_enabled = r;

        } else if (FUNC6(key, "root")) {

                if (FUNC5(key, value))
                        return 0;

                if (FUNC1(&arg_root_what, value) < 0)
                        return FUNC2();

        } else if (FUNC6(key, "rootfstype")) {

                if (FUNC5(key, value))
                        return 0;

                if (FUNC1(&arg_root_fstype, value) < 0)
                        return FUNC2();

        } else if (FUNC6(key, "rootflags")) {

                if (FUNC5(key, value))
                        return 0;

                if (!FUNC7(&arg_root_options, ",", value, NULL))
                        return FUNC2();

        } else if (FUNC6(key, "roothash")) {

                if (FUNC5(key, value))
                        return 0;

                if (FUNC1(&arg_root_hash, value) < 0)
                        return FUNC2();

        } else if (FUNC6(key, "mount.usr")) {

                if (FUNC5(key, value))
                        return 0;

                if (FUNC1(&arg_usr_what, value) < 0)
                        return FUNC2();

        } else if (FUNC6(key, "mount.usrfstype")) {

                if (FUNC5(key, value))
                        return 0;

                if (FUNC1(&arg_usr_fstype, value) < 0)
                        return FUNC2();

        } else if (FUNC6(key, "mount.usrflags")) {

                if (FUNC5(key, value))
                        return 0;

                if (!FUNC7(&arg_usr_options, ",", value, NULL))
                        return FUNC2();

        } else if (FUNC6(key, "rw") && !value)
                arg_root_rw = true;
        else if (FUNC6(key, "ro") && !value)
                arg_root_rw = false;
        else if (FUNC6(key, "systemd.volatile")) {
                VolatileMode m;

                if (value) {
                        m = FUNC8(value);
                        if (m < 0)
                                FUNC3("Failed to parse systemd.volatile= argument: %s", value);
                        else
                                arg_volatile_mode = m;
                } else
                        arg_volatile_mode = VOLATILE_YES;
        }

        return 0;
}