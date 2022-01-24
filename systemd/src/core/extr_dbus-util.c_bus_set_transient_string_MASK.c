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
typedef  int /*<<< orphan*/  sd_bus_error ;
typedef  int UnitWriteFlags ;
typedef  int /*<<< orphan*/  Unit ;

/* Variables and functions */
 int UNIT_ESCAPE_SPECIFIERS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char**) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int FUNC3 (char**,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,char const**) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,char const*,char*,char const*,int /*<<< orphan*/ ) ; 

int FUNC7(
                Unit *u,
                const char *name,
                char **p,
                sd_bus_message *message,
                UnitWriteFlags flags,
                sd_bus_error *error) {

        const char *v;
        int r;

        FUNC1(p);

        r = FUNC4(message, "s", &v);
        if (r < 0)
                return r;

        if (!FUNC0(flags)) {
                r = FUNC3(p, FUNC2(v));
                if (r < 0)
                        return r;

                FUNC6(u, flags|UNIT_ESCAPE_SPECIFIERS, name,
                                    "%s=%s", name, FUNC5(v));
        }

        return 1;
}