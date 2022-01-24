#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
struct TYPE_3__ {int /*<<< orphan*/  id; int /*<<< orphan*/  manager; } ;
typedef  int /*<<< orphan*/  Scope ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_ERROR_SCOPE_NOT_RUNNING ; 
 int ESTALE ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC7(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Scope *s = userdata;
        int r;

        FUNC1(message);
        FUNC1(s);

        r = FUNC3(FUNC0(s), message, "stop", error);
        if (r < 0)
                return r;

        r = FUNC2(FUNC0(s)->manager, message, error);
        if (r < 0)
                return r;
        if (r == 0)
                return 1; /* No authorization for now, but the async polkit stuff will call us again when it has it */

        r = FUNC4(s);
        if (r == -ESTALE)
                return FUNC5(error, BUS_ERROR_SCOPE_NOT_RUNNING, "Scope %s is not running, cannot abandon.", FUNC0(s)->id);
        if (r < 0)
                return r;

        return FUNC6(message, NULL);
}