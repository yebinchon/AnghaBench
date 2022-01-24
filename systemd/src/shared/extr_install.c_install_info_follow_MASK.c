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
struct TYPE_8__ {scalar_t__ type; int /*<<< orphan*/  path; int /*<<< orphan*/  symlink_target; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ UnitFileInstallInfo ;
typedef  int /*<<< orphan*/  SearchFlags ;
typedef  TYPE_1__ InstallContext ;

/* Variables and functions */
 int EINVAL ; 
 int EXDEV ; 
 scalar_t__ UNIT_FILE_TYPE_SYMLINK ; 
 scalar_t__ _UNIT_FILE_TYPE_INVALID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(
                InstallContext *c,
                UnitFileInstallInfo *i,
                const char *root_dir,
                SearchFlags flags,
                bool ignore_different_name) {

        FUNC0(c);
        FUNC0(i);

        if (i->type != UNIT_FILE_TYPE_SYMLINK)
                return -EINVAL;
        if (!i->symlink_target)
                return -EINVAL;

        /* If the basename doesn't match, the caller should add a
         * complete new entry for this. */

        if (!ignore_different_name && !FUNC3(FUNC1(i->symlink_target), i->name))
                return -EXDEV;

        FUNC2(i->path, i->symlink_target);
        i->type = _UNIT_FILE_TYPE_INVALID;

        return FUNC4(c, i, i->path, root_dir, flags);
}