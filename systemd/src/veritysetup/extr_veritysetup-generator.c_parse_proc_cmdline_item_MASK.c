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
 int /*<<< orphan*/  arg_data_what ; 
 int arg_enabled ; 
 int /*<<< orphan*/  arg_hash_what ; 
 int /*<<< orphan*/  arg_root_hash ; 
 int FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 scalar_t__ FUNC5 (char const*,char const*) ; 

__attribute__((used)) static int FUNC6(const char *key, const char *value, void *data) {
        int r;

        if (FUNC4(key, "systemd.verity")) {

                r = value ? FUNC3(value) : 1;
                if (r < 0)
                        FUNC2("Failed to parse verity= kernel command line switch %s. Ignoring.", value);
                else
                        arg_enabled = r;

        } else if (FUNC4(key, "roothash")) {

                if (FUNC5(key, value))
                        return 0;

                r = FUNC0(&arg_root_hash, value);
                if (r < 0)
                        return FUNC1();

        } else if (FUNC4(key, "systemd.verity_root_data")) {

                if (FUNC5(key, value))
                        return 0;

                r = FUNC0(&arg_data_what, value);
                if (r < 0)
                        return FUNC1();

        } else if (FUNC4(key, "systemd.verity_root_hash")) {

                if (FUNC5(key, value))
                        return 0;

                r = FUNC0(&arg_hash_what, value);
                if (r < 0)
                        return FUNC1();
        }

        return 0;
}