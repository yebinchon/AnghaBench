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
struct TYPE_8__ {scalar_t__ type; int /*<<< orphan*/  path; } ;
typedef  TYPE_1__ UnitFileInstallInfo ;
typedef  int /*<<< orphan*/  UnitFileChange ;
typedef  TYPE_1__ LookupPaths ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int ERFKILL ; 
 scalar_t__ UNIT_FILE_TYPE_MASKED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*) ; 
 scalar_t__ FUNC1 (TYPE_1__ const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,size_t*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(
                const UnitFileInstallInfo *i,
                const LookupPaths *paths,
                UnitFileChange **changes,
                size_t *n_changes) {
        FUNC0(i);
        FUNC0(paths);

        /* Checks whether the loaded unit file is one we should process, or is masked,
         * transient or generated and thus not subject to enable/disable operations. */

        if (i->type == UNIT_FILE_TYPE_MASKED) {
                FUNC3(changes, n_changes, -ERFKILL, i->path, NULL);
                return -ERFKILL;
        }
        if (FUNC1(paths, i->path) ||
            FUNC2(paths, i->path)) {
                FUNC3(changes, n_changes, -EADDRNOTAVAIL, i->path, NULL);
                return -EADDRNOTAVAIL;
        }

        return 0;
}