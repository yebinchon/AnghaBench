#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  what; int /*<<< orphan*/  from_fragment; } ;
typedef  TYPE_1__ Swap ;

/* Variables and functions */
 int /*<<< orphan*/  SPECIAL_REMOUNT_FS_SERVICE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  UNIT_AFTER ; 
 int /*<<< orphan*/  UNIT_BINDS_TO ; 
 int /*<<< orphan*/  UNIT_DEPENDENCY_FILE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(Swap *s) {
        FUNC1(s);

        if (!s->what)
                return 0;

        if (!s->from_fragment)
                return 0;

        if (FUNC2(s->what))
                return FUNC4(FUNC0(s), s->what, UNIT_BINDS_TO, UNIT_DEPENDENCY_FILE);

        /* File based swap devices need to be ordered after systemd-remount-fs.service,
         * since they might need a writable file system. */
        return FUNC3(FUNC0(s), UNIT_AFTER, SPECIAL_REMOUNT_FS_SERVICE, true, UNIT_DEPENDENCY_FILE);
}