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
typedef  scalar_t__ UnitFilePresetMode ;
typedef  int /*<<< orphan*/  UnitFileFlags ;
typedef  int /*<<< orphan*/  UnitFileChange ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ UNIT_FILE_PRESET_FULL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC3 (char const*) ; 
 int FUNC4 (TYPE_1__*,char*,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_1__*,TYPE_1__*,int,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_1__*,char*,char const**,int*,int*) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ **,size_t*) ; 
 scalar_t__ FUNC9 (char const*) ; 

__attribute__((used)) static int FUNC10(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        UnitFileChange *changes = NULL;
        size_t n_changes = 0;
        Manager *m = userdata;
        UnitFilePresetMode mm;
        const char *mode;
        UnitFileFlags flags;
        int force, runtime, r;

        FUNC0(message);
        FUNC0(m);

        r = FUNC4(message, "enable", error);
        if (r < 0)
                return r;

        r = FUNC6(message, "sbb", &mode, &runtime, &force);
        if (r < 0)
                return r;

        flags = FUNC7(runtime, force);

        if (FUNC3(mode))
                mm = UNIT_FILE_PRESET_FULL;
        else {
                mm = FUNC9(mode);
                if (mm < 0)
                        return -EINVAL;
        }

        r = FUNC1(m, message, error);
        if (r < 0)
                return r;
        if (r == 0)
                return 1; /* No authorization for now, but the async polkit stuff will call us again when it has it */

        r = FUNC8(m->unit_file_scope, flags, NULL, mm, &changes, &n_changes);
        if (r < 0)
                return FUNC2(error, r, changes, n_changes);

        return FUNC5(m, message, -1, changes, n_changes, error);
}