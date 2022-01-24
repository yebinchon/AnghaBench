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
typedef  scalar_t__ UnitFileChangeType ;
typedef  int /*<<< orphan*/  UnitFileChange ;

/* Variables and functions */
 int /*<<< orphan*/  SD_BUS_TYPE_ARRAY ; 
 int /*<<< orphan*/  FUNC0 (size_t*) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,char const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,char const**,char const**,char const**) ; 
 scalar_t__ FUNC6 (char const*) ; 
 int FUNC7 (int /*<<< orphan*/ **,size_t*,scalar_t__,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,int) ; 

int FUNC9(sd_bus_message *m, bool quiet, UnitFileChange **changes, size_t *n_changes) {
        const char *type, *path, *source;
        int r;

        /* changes is dereferenced when calling unit_file_dump_changes() later,
         * so we have to make sure this is not NULL. */
        FUNC0(changes);
        FUNC0(n_changes);

        r = FUNC3(m, SD_BUS_TYPE_ARRAY, "(sss)");
        if (r < 0)
                return FUNC1(r);

        while ((r = FUNC5(m, "(sss)", &type, &path, &source)) > 0) {
                /* We expect only "success" changes to be sent over the bus.
                   Hence, reject anything negative. */
                UnitFileChangeType ch = FUNC6(type);

                if (ch < 0) {
                        FUNC2("Manager reported unknown change type \"%s\" for path \"%s\", ignoring.", type, path);
                        continue;
                }

                r = FUNC7(changes, n_changes, ch, path, source);
                if (r < 0)
                        return r;
        }
        if (r < 0)
                return FUNC1(r);

        r = FUNC4(m);
        if (r < 0)
                return FUNC1(r);

        FUNC8(0, NULL, *changes, *n_changes, quiet);
        return 0;
}