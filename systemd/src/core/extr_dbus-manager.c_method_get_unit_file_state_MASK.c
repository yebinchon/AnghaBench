#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  unit_file_scope; } ;
typedef  TYPE_1__ sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
typedef  int /*<<< orphan*/  UnitFileState ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_1__*,char*,char const**) ; 
 int FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Manager *m = userdata;
        const char *name;
        UnitFileState state;
        int r;

        FUNC0(message);
        FUNC0(m);

        /* Anyone can call this method */

        r = FUNC1(message, "status", error);
        if (r < 0)
                return r;

        r = FUNC2(message, "s", &name);
        if (r < 0)
                return r;

        r = FUNC4(m->unit_file_scope, NULL, name, &state);
        if (r < 0)
                return r;

        return FUNC3(message, "s", FUNC5(state));
}