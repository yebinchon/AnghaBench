#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ job_id; int /*<<< orphan*/  active_state; int /*<<< orphan*/  following; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ UnitInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FNM_NOESCAPE ; 
 scalar_t__ arg_all ; 
 int /*<<< orphan*/  arg_states ; 
 scalar_t__ arg_types ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC7(const UnitInfo *u, char **patterns) {
        FUNC0(u);

        if (!FUNC4(patterns, u->id, FNM_NOESCAPE))
                return false;

        if (arg_types && !FUNC3(arg_types, FUNC6(u->id)))
                return false;

        if (arg_all)
                return true;

        /* Note that '--all' is not purely a state filter, but also a
         * filter that hides units that "follow" other units (which is
         * used for device units that appear under different names). */
        if (!FUNC1(u->following))
                return false;

        if (!FUNC5(arg_states))
                return true;

        /* By default show all units except the ones in inactive
         * state and with no pending job */
        if (u->job_id > 0)
                return true;

        if (FUNC2(u->active_state, "inactive"))
                return false;

        return true;
}