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
typedef  scalar_t__ ConditionType ;
typedef  int /*<<< orphan*/  Condition ;

/* Variables and functions */
 scalar_t__ CONDITION_NULL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SD_BUS_ERROR_INVALID_ARGS ; 
 int UNIT_ESCAPE_SPECIFIERS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (char const*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (scalar_t__,char const*,int,int) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (char const*) ; 
 int /*<<< orphan*/  conditions ; 
 scalar_t__ FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*,...) ; 
 int FUNC11 (int /*<<< orphan*/ *,char,char*) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *,char*,char const**,int*,int*,char const**) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int,char const*,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 

__attribute__((used)) static int FUNC16(
                Unit *u,
                const char *name,
                Condition **list,
                bool is_condition,
                sd_bus_message *message,
                UnitWriteFlags flags,
                sd_bus_error *error) {

        const char *type_name, *param;
        int trigger, negate, r;
        bool empty = true;

        FUNC2(list);

        r = FUNC11(message, 'a', "(sbbs)");
        if (r < 0)
                return r;

        while ((r = FUNC13(message, "(sbbs)", &type_name, &trigger, &negate, &param)) > 0) {
                ConditionType t;

                t = is_condition ? FUNC7(type_name) : FUNC3(type_name);
                if (t < 0)
                        return FUNC10(error, SD_BUS_ERROR_INVALID_ARGS, "Invalid condition type: %s", type_name);

                if (t != CONDITION_NULL) {
                        if (FUNC8(param))
                                return FUNC10(error, SD_BUS_ERROR_INVALID_ARGS, "Condition parameter in %s is empty", type_name);

                        if (FUNC6(t) && !FUNC9(param))
                                return FUNC10(error, SD_BUS_ERROR_INVALID_ARGS, "Path in condition %s is not absolute: %s", type_name, param);
                } else
                        param = NULL;

                if (!FUNC1(flags)) {
                        Condition *c;

                        c = FUNC5(t, param, trigger, negate);
                        if (!c)
                                return -ENOMEM;

                        FUNC0(conditions, *list, c);

                        if (t != CONDITION_NULL)
                                FUNC14(u, flags|UNIT_ESCAPE_SPECIFIERS, name,
                                                    "%s=%s%s%s", type_name,
                                                    trigger ? "|" : "", negate ? "!" : "", param);
                        else
                                FUNC14(u, flags, name,
                                                    "%s=%s%s", type_name,
                                                    trigger ? "|" : "", FUNC15(!negate));
                }

                empty = false;
        }
        if (r < 0)
                return r;

        r = FUNC12(message);
        if (r < 0)
                return r;

        if (!FUNC1(flags) && empty) {
                *list = FUNC4(*list);
                FUNC14(u, flags, name, "%sNull=", is_condition ? "Condition" : "Assert");
        }

        return 1;
}