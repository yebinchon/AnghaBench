#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  char const sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
typedef  size_t UnitType ;
struct TYPE_10__ {scalar_t__ bus_track_add; } ;
typedef  TYPE_1__ Unit ;
struct TYPE_11__ {int /*<<< orphan*/  can_transient; } ;
typedef  char const Manager ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_ERROR_UNIT_EXISTS ; 
 int /*<<< orphan*/  SD_BUS_ERROR_INVALID_ARGS ; 
 int /*<<< orphan*/  UNIT_RUNTIME ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int FUNC1 (TYPE_1__*,char const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_1__*,char const*) ; 
 int FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int FUNC5 (char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__**) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int FUNC9 (TYPE_1__*) ; 
 size_t FUNC10 (char const*) ; 
 char const* FUNC11 (size_t) ; 
 TYPE_2__** unit_vtable ; 

__attribute__((used)) static int FUNC12(
                Manager *m,
                sd_bus_message *message,
                const char *name,
                Unit **unit,
                sd_bus_error *error) {

        UnitType t;
        Unit *u;
        int r;

        FUNC0(m);
        FUNC0(message);
        FUNC0(name);

        t = FUNC10(name);
        if (t < 0)
                return FUNC6(error, SD_BUS_ERROR_INVALID_ARGS, "Invalid unit name or type.");

        if (!unit_vtable[t]->can_transient)
                return FUNC6(error, SD_BUS_ERROR_INVALID_ARGS, "Unit type %s does not support transient units.", FUNC11(t));

        r = FUNC5(m, name, NULL, error, &u);
        if (r < 0)
                return r;

        if (!FUNC8(u))
                return FUNC6(error, BUS_ERROR_UNIT_EXISTS, "Unit %s already exists.", name);

        /* OK, the unit failed to load and is unreferenced, now let's
         * fill in the transient data instead */
        r = FUNC9(u);
        if (r < 0)
                return r;

        /* Set our properties */
        r = FUNC1(u, message, UNIT_RUNTIME, false, error);
        if (r < 0)
                return r;

        /* If the client asked for it, automatically add a reference to this unit. */
        if (u->bus_track_add) {
                r = FUNC2(u, message);
                if (r < 0)
                        return FUNC3(r, "Failed to watch sender: %m");
        }

        /* Now load the missing bits of the unit we just created */
        FUNC7(u);
        FUNC4(m);

        *unit = u;

        return 0;
}