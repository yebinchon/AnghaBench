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
 scalar_t__ FUNC0 (char const*,char*,char*,char*,char*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int FUNC3 (int) ; 
 scalar_t__ FUNC4 (char const*) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,char*,char*,int,...) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 

__attribute__((used)) static int FUNC7(sd_bus_message *m, const char *field, const char *eq) {
        int r;

        if (FUNC6(field, "MakeDirectory"))
                return FUNC1(m, field, eq);

        if (FUNC6(field, "DirectoryMode"))
                return FUNC2(m, field, eq);

        if (FUNC0(field,
                       "PathExists", "PathExistsGlob", "PathChanged",
                       "PathModified", "DirectoryNotEmpty")) {
                if (FUNC4(eq))
                        r = FUNC5(m, "(sv)", "Paths", "a(ss)", 0);
                else
                        r = FUNC5(m, "(sv)", "Paths", "a(ss)", 1, field, eq);
                if (r < 0)
                        return FUNC3(r);

                return 1;
        }

        return 0;
}