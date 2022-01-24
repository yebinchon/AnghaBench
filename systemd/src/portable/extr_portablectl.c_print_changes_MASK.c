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
typedef  int /*<<< orphan*/  sd_bus_message ;

/* Variables and functions */
 int /*<<< orphan*/  SPECIAL_GLYPH_ARROW ; 
 scalar_t__ arg_quiet ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,...) ; 
 int FUNC4 (int /*<<< orphan*/ *,char,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*,char const**,char const**,char const**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char const*,char*) ; 

__attribute__((used)) static int FUNC9(sd_bus_message *m) {
        int r;

        if (arg_quiet)
                return 0;

        r = FUNC4(m, 'a', "(sss)");
        if (r < 0)
                return FUNC0(r);

        for (;;) {
                const char *type, *path, *source;

                r = FUNC6(m, "(sss)", &type, &path, &source);
                if (r < 0)
                        return FUNC0(r);
                if (r == 0)
                        break;

                if (FUNC8(type, "symlink"))
                        FUNC3("Created symlink %s %s %s.", path, FUNC7(SPECIAL_GLYPH_ARROW), source);
                else if (FUNC8(type, "copy")) {
                        if (FUNC1(source))
                                FUNC3("Copied %s.", path);
                        else
                                FUNC3("Copied %s %s %s.", source, FUNC7(SPECIAL_GLYPH_ARROW), path);
                } else if (FUNC8(type, "unlink"))
                        FUNC3("Removed %s.", path);
                else if (FUNC8(type, "write"))
                        FUNC3("Written %s.", path);
                else if (FUNC8(type, "mkdir"))
                        FUNC3("Created directory %s.", path);
                else
                        FUNC2("Unexpected change: %s/%s/%s", type, path, source);
        }

        r = FUNC5(m);
        if (r < 0)
                return r;

        return 0;
}