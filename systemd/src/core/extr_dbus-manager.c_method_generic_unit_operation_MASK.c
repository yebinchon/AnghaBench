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
typedef  int (* sd_bus_message_handler_t ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
typedef  int /*<<< orphan*/  Unit ;
typedef  int /*<<< orphan*/  Manager ;
typedef  int /*<<< orphan*/  GenericUnitOperationFlags ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GENERIC_UNIT_LOAD ; 
 int /*<<< orphan*/  GENERIC_UNIT_VALIDATE_LOADED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int FUNC5 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*,char const**) ; 

__attribute__((used)) static int FUNC7(
                sd_bus_message *message,
                Manager *m,
                sd_bus_error *error,
                sd_bus_message_handler_t handler,
                GenericUnitOperationFlags flags) {

        const char *name;
        Unit *u;
        int r;

        FUNC1(message);
        FUNC1(m);

        /* Read the first argument from the command and pass the operation to the specified per-unit
         * method. */

        r = FUNC6(message, "s", &name);
        if (r < 0)
                return r;

        if (!FUNC4(name) && FUNC0(flags, GENERIC_UNIT_LOAD))
                r = FUNC5(m, name, NULL, error, &u);
        else
                r = FUNC2(m, message, name, &u, error);
        if (r < 0)
                return r;

        if (FUNC0(flags, GENERIC_UNIT_VALIDATE_LOADED)) {
                r = FUNC3(u, error);
                if (r < 0)
                        return r;
        }

        return handler(message, u, error);
}