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
 char const* DEBUGTTY ; 
 int /*<<< orphan*/  UNIT_NAME_MANGLE_WARN ; 
 int /*<<< orphan*/  arg_debug_shell ; 
 int /*<<< orphan*/  arg_default_unit ; 
 int /*<<< orphan*/  arg_mask ; 
 int /*<<< orphan*/  arg_wants ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC2 (int,char*,...) ; 
 int FUNC3 () ; 
 int FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 
 scalar_t__ FUNC6 (char const*,char const*) ; 
 char* FUNC7 (char const*) ; 
 char* FUNC8 (char const*) ; 
 scalar_t__ FUNC9 (char const*,char*) ; 
 int FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int FUNC11 (char const*,int /*<<< orphan*/ ,char**) ; 

__attribute__((used)) static int FUNC12(const char *key, const char *value, void *data) {
        int r;

        FUNC0(key);

        if (FUNC9(key, "systemd.mask")) {
                char *n;

                if (FUNC6(key, value))
                        return 0;

                r = FUNC11(value, UNIT_NAME_MANGLE_WARN, &n);
                if (r < 0)
                        return FUNC2(r, "Failed to glob unit name: %m");

                r = FUNC10(&arg_mask, n);
                if (r < 0)
                        return FUNC3();

        } else if (FUNC9(key, "systemd.wants")) {
                char *n;

                if (FUNC6(key, value))
                        return 0;

                r = FUNC11(value, UNIT_NAME_MANGLE_WARN, &n);
                if (r < 0)
                        return FUNC2(r, "Failed to glob unit name: %m");

                r = FUNC10(&arg_wants, n);
                if (r < 0)
                        return FUNC3();

        } else if (FUNC5(key, "systemd.debug_shell")) {
                const char *t = NULL;

                r = value ? FUNC4(value) : 1;
                if (r < 0)
                        t = FUNC8(value);
                else if (r > 0)
                        t = FUNC8(DEBUGTTY);

                if (FUNC1(&arg_debug_shell, t) < 0)
                        return FUNC3();

        } else if (FUNC9(key, "systemd.unit")) {

                if (FUNC6(key, value))
                        return 0;

                r = FUNC1(&arg_default_unit, value);
                if (r < 0)
                        return FUNC2(r, "Failed to set default unit %s: %m", value);

        } else if (!value) {
                const char *target;

                target = FUNC7(key);
                if (target) {
                        r = FUNC1(&arg_default_unit, target);
                        if (r < 0)
                                return FUNC2(r, "Failed to set default unit %s: %m", target);
                }
        }

        return 0;
}