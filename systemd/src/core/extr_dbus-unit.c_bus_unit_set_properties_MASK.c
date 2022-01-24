#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_17__ ;

/* Type definitions */
struct TYPE_20__ {scalar_t__ load_state; scalar_t__ transient; } ;
typedef  TYPE_1__ sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
typedef  int UnitWriteFlags ;
typedef  TYPE_1__ Unit ;
struct TYPE_19__ {int (* bus_set_property ) (TYPE_1__*,char const*,TYPE_1__*,int,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* bus_commit_properties ) (TYPE_1__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  SD_BUS_ERROR_PROPERTY_READ_ONLY ; 
 int UNIT_PERSISTENT ; 
 int UNIT_RUNTIME ; 
 scalar_t__ UNIT_STUB ; 
 TYPE_17__* FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,char const*,TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__*,char const*,TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC6 (TYPE_1__*,char,char*) ; 
 int FUNC7 (TYPE_1__*) ; 
 int FUNC8 (TYPE_1__*,char*,char const**) ; 
 int FUNC9 (TYPE_1__*,int) ; 
 int FUNC10 (TYPE_1__*,char const*,TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 

int FUNC12(
                Unit *u,
                sd_bus_message *message,
                UnitWriteFlags flags,
                bool commit,
                sd_bus_error *error) {

        bool for_real = false;
        unsigned n = 0;
        int r;

        FUNC2(u);
        FUNC2(message);

        /* We iterate through the array twice. First run we just check
         * if all passed data is valid, second run actually applies
         * it. This is to implement transaction-like behaviour without
         * actually providing full transactions. */

        r = FUNC6(message, 'a', "(sv)");
        if (r < 0)
                return r;

        for (;;) {
                const char *name;
                UnitWriteFlags f;

                r = FUNC6(message, 'r', "sv");
                if (r < 0)
                        return r;
                if (r == 0) {
                        if (for_real || FUNC1(flags))
                                break;

                        /* Reached EOF. Let's try again, and this time for realz... */
                        r = FUNC9(message, false);
                        if (r < 0)
                                return r;

                        for_real = true;
                        continue;
                }

                r = FUNC8(message, "s", &name);
                if (r < 0)
                        return r;

                if (!FUNC0(u)->bus_set_property)
                        return FUNC5(error, SD_BUS_ERROR_PROPERTY_READ_ONLY, "Objects of this type do not support setting properties.");

                r = FUNC6(message, 'v', NULL);
                if (r < 0)
                        return r;

                /* If not for real, then mask out the two target flags */
                f = for_real ? flags : (flags & ~(UNIT_RUNTIME|UNIT_PERSISTENT));

                r = FUNC0(u)->bus_set_property(u, name, message, f, error);
                if (r == 0 && u->transient && u->load_state == UNIT_STUB)
                        r = FUNC4(u, name, message, f, error);
                if (r == 0)
                        r = FUNC3(u, name, message, f, error);
                if (r < 0)
                        return r;

                if (r == 0)
                        return FUNC5(error, SD_BUS_ERROR_PROPERTY_READ_ONLY, "Cannot set property %s, or unknown property.", name);

                r = FUNC7(message);
                if (r < 0)
                        return r;

                r = FUNC7(message);
                if (r < 0)
                        return r;

                n += for_real;
        }

        r = FUNC7(message);
        if (r < 0)
                return r;

        if (commit && n > 0 && FUNC0(u)->bus_commit_properties)
                FUNC0(u)->bus_commit_properties(u);

        return n;
}