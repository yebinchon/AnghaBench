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
 int arg_enabled ; 
 int arg_root_enabled ; 
 int arg_root_rw ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*) ; 
 int FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 scalar_t__ FUNC4 (char const*,char const*) ; 
 int FUNC5 (char const*,char*) ; 

__attribute__((used)) static int FUNC6(const char *key, const char *value, void *data) {
        int r;

        FUNC0(key);

        if (FUNC3(key, "systemd.gpt_auto") ||
            FUNC3(key, "rd.systemd.gpt_auto")) {

                r = value ? FUNC2(value) : 1;
                if (r < 0)
                        FUNC1(r, "Failed to parse gpt-auto switch \"%s\", ignoring: %m", value);
                else
                        arg_enabled = r;

        } else if (FUNC3(key, "root")) {

                if (FUNC4(key, value))
                        return 0;

                /* Disable root disk logic if there's a root= value
                 * specified (unless it happens to be "gpt-auto") */

                arg_root_enabled = FUNC5(value, "gpt-auto");

        } else if (FUNC3(key, "roothash")) {

                if (FUNC4(key, value))
                        return 0;

                /* Disable root disk logic if there's roothash= defined (i.e. verity enabled) */

                arg_root_enabled = false;

        } else if (FUNC3(key, "rw") && !value)
                arg_root_rw = true;
        else if (FUNC3(key, "ro") && !value)
                arg_root_rw = false;

        return 0;
}