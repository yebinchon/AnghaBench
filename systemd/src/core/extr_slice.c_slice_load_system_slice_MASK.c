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
struct TYPE_5__ {int perpetual; int default_dependencies; scalar_t__ documentation; scalar_t__ description; int /*<<< orphan*/  manager; } ;
typedef  TYPE_1__ Unit ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPECIAL_SYSTEM_SLICE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(Unit *u) {
        FUNC1(u);

        if (!FUNC0(u->manager))
                return 0;
        if (!FUNC4(u, SPECIAL_SYSTEM_SLICE))
                return 0;

        u->perpetual = true;

        /* The system slice is a bit special. For example it is always running and cannot be terminated. Because of its
         * special semantics we synthesize it here, instead of relying on the unit file on disk. */

        u->default_dependencies = false;

        if (!u->description)
                u->description = FUNC2("System Slice");
        if (!u->documentation)
                u->documentation = FUNC3("man:systemd.special(7)");

        return 1;
}