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
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  sd_bus_message ;
typedef  scalar_t__ ConditionType ;

/* Variables and functions */
 int /*<<< orphan*/  EXTRACT_UNQUOTE ; 
 scalar_t__ FUNC0 (char const*,char*,char*,...) ; 
 scalar_t__ _CONDITION_TYPE_INVALID ; 
 scalar_t__ FUNC1 (char const*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int FUNC5 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int FUNC6 (int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int) ; 
 scalar_t__ FUNC8 (char const*) ; 
 scalar_t__ FUNC9 (char const*) ; 
 int FUNC10 (int,char*,char const*,char const*) ; 
 int FUNC11 (char const*,scalar_t__*) ; 
 int FUNC12 (int /*<<< orphan*/ *,char*,char const*,char*,int,...) ; 
 scalar_t__ FUNC13 (char const*,char*) ; 
 scalar_t__ FUNC14 (char const*) ; 

__attribute__((used)) static int FUNC15(sd_bus_message *m, const char *field, const char *eq) {
        ConditionType t = _CONDITION_TYPE_INVALID;
        bool is_condition = false;
        int r;

        if (FUNC0(field,
                       "Description", "SourcePath", "OnFailureJobMode",
                       "JobTimeoutAction", "JobTimeoutRebootArgument",
                       "StartLimitAction", "FailureAction", "SuccessAction",
                       "RebootArgument", "CollectMode"))
                return FUNC5(m, field, eq);

        if (FUNC0(field,
                       "StopWhenUnneeded", "RefuseManualStart", "RefuseManualStop",
                       "AllowIsolate", "IgnoreOnIsolate", "DefaultDependencies"))
                return FUNC2(m, field, eq);

        if (FUNC0(field, "JobTimeoutSec", "JobRunningTimeoutSec", "StartLimitIntervalSec"))
                return FUNC3(m, field, eq);

        if (FUNC13(field, "StartLimitBurst"))
                return FUNC4(m, field, eq);

        if (FUNC0(field, "SuccessActionExitStatus", "FailureActionExitStatus")) {
                if (FUNC9(eq))
                        r = FUNC12(m, "(sv)", field, "i", -1);
                else {
                        uint8_t u;

                        r = FUNC11(eq, &u);
                        if (r < 0)
                                return FUNC10(r, "Failed to parse %s=%s", field, eq);

                        r = FUNC12(m, "(sv)", field, "i", (int) u);
                }
                if (r < 0)
                        return FUNC7(r);

                return 1;
        }

        if (FUNC14(field) >= 0 ||
            FUNC0(field, "Documentation", "RequiresMountsFor"))
                return FUNC6(m, field, eq, EXTRACT_UNQUOTE);

        t = FUNC8(field);
        if (t >= 0)
                is_condition = true;
        else
                t = FUNC1(field);
        if (t >= 0) {
                if (FUNC9(eq))
                        r = FUNC12(m, "(sv)", is_condition ? "Conditions" : "Asserts", "a(sbbs)", 0);
                else {
                        const char *p = eq;
                        int trigger, negate;

                        trigger = *p == '|';
                        if (trigger)
                                p++;

                        negate = *p == '!';
                        if (negate)
                                p++;

                        r = FUNC12(m, "(sv)", is_condition ? "Conditions" : "Asserts", "a(sbbs)", 1,
                                                  field, trigger, negate, p);
                }
                if (r < 0)
                        return FUNC7(r);

                return 1;
        }

        return 0;
}