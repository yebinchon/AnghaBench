#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  unit_file_scope; } ;
typedef  TYPE_1__ sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
typedef  int /*<<< orphan*/  UnitFileChange ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int /*<<< orphan*/  UNIT_FILE_FORCE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,size_t) ; 
 int FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__*,TYPE_1__*,int,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_1__*,char*,char const**,int*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ **,size_t*) ; 

__attribute__((used)) static int FUNC7(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        UnitFileChange *changes = NULL;
        size_t n_changes = 0;
        Manager *m = userdata;
        const char *name;
        int force, r;

        FUNC0(message);
        FUNC0(m);

        r = FUNC3(message, "enable", error);
        if (r < 0)
                return r;

        r = FUNC5(message, "sb", &name, &force);
        if (r < 0)
                return r;

        r = FUNC1(m, message, error);
        if (r < 0)
                return r;
        if (r == 0)
                return 1; /* No authorization for now, but the async polkit stuff will call us again when it has it */

        r = FUNC6(m->unit_file_scope, force ? UNIT_FILE_FORCE : 0, NULL, name, &changes, &n_changes);
        if (r < 0)
                return FUNC2(error, r, changes, n_changes);

        return FUNC4(m, message, -1, changes, n_changes, error);
}