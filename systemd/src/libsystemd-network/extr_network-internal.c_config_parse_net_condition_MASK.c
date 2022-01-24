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
typedef  int ConditionType ;
typedef  int /*<<< orphan*/  Condition ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (int,char const*,int,int) ; 
 int /*<<< orphan*/  conditions ; 
 scalar_t__ FUNC4 (char const*) ; 
 int FUNC5 () ; 

int FUNC6(const char *unit,
                               const char *filename,
                               unsigned line,
                               const char *section,
                               unsigned section_line,
                               const char *lvalue,
                               int ltype,
                               const char *rvalue,
                               void *data,
                               void *userdata) {

        ConditionType cond = ltype;
        Condition **list = data, *c;
        bool negate;

        FUNC1(filename);
        FUNC1(lvalue);
        FUNC1(rvalue);
        FUNC1(data);

        if (FUNC4(rvalue)) {
                *list = FUNC2(*list, cond);
                return 0;
        }

        negate = rvalue[0] == '!';
        if (negate)
                rvalue++;

        c = FUNC3(cond, rvalue, false, negate);
        if (!c)
                return FUNC5();

        /* Drop previous assignment. */
        *list = FUNC2(*list, cond);

        FUNC0(conditions, *list, c);
        return 0;
}