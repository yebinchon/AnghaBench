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
typedef  char const sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
typedef  int UnitWriteFlags ;
typedef  char const Unit ;

/* Variables and functions */
 int UNIT_ESCAPE_SPECIFIERS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int FUNC2 (char const*,char*,char const**) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 int FUNC4 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int,char const*,char*,char const*) ; 

__attribute__((used)) static int FUNC6(
                Unit *u,
                const char *name,
                sd_bus_message *message,
                UnitWriteFlags flags,
                sd_bus_error *error) {

        int r;

        FUNC1(u);
        FUNC1(name);
        FUNC1(message);

        /* Handles setting properties both "live" (i.e. at any time during runtime), and during creation (for transient
         * units that are being created). */

        if (FUNC3(name, "Description")) {
                const char *d;

                r = FUNC2(message, "s", &d);
                if (r < 0)
                        return r;

                if (!FUNC0(flags)) {
                        r = FUNC4(u, d);
                        if (r < 0)
                                return r;

                        FUNC5(u, flags|UNIT_ESCAPE_SPECIFIERS, name, "Description=%s", d);
                }

                return 1;
        }

        return 0;
}