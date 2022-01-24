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
typedef  int /*<<< orphan*/  Condition ;

/* Variables and functions */
 int /*<<< orphan*/  CONDITION_NULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  conditions ; 
 scalar_t__ FUNC4 (char const*) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ ,char const*,unsigned int,int,char*,char const*) ; 
 int FUNC7 (char const*) ; 

int FUNC8(
                const char *unit,
                const char *filename,
                unsigned line,
                const char *section,
                unsigned section_line,
                const char *lvalue,
                int ltype,
                const char *rvalue,
                void *data,
                void *userdata) {

        Condition **list = data, *c;
        bool trigger, negate;
        int b;

        FUNC1(filename);
        FUNC1(lvalue);
        FUNC1(rvalue);
        FUNC1(data);

        FUNC6(unit, LOG_WARNING, filename, line, 0, "%s= is deprecated, please do not use.", lvalue);

        if (FUNC4(rvalue)) {
                /* Empty assignment resets the list */
                *list = FUNC2(*list);
                return 0;
        }

        trigger = rvalue[0] == '|';
        if (trigger)
                rvalue++;

        negate = rvalue[0] == '!';
        if (negate)
                rvalue++;

        b = FUNC7(rvalue);
        if (b < 0) {
                FUNC6(unit, LOG_ERR, filename, line, b, "Failed to parse boolean value in condition, ignoring: %s", rvalue);
                return 0;
        }

        if (!b)
                negate = !negate;

        c = FUNC3(CONDITION_NULL, NULL, trigger, negate);
        if (!c)
                return FUNC5();

        FUNC0(conditions, *list, c);
        return 0;
}