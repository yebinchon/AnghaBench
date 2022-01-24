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
struct TYPE_5__ {int perpetual; int default_dependencies; scalar_t__ documentation; scalar_t__ description; } ;
typedef  TYPE_1__ Unit ;

/* Variables and functions */
 int /*<<< orphan*/  SPECIAL_ROOT_SLICE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(Unit *u) {
        FUNC0(u);

        if (!FUNC3(u, SPECIAL_ROOT_SLICE))
                return 0;

        u->perpetual = true;

        /* The root slice is a bit special. For example it is always running and cannot be terminated. Because of its
         * special semantics we synthesize it here, instead of relying on the unit file on disk. */

        u->default_dependencies = false;

        if (!u->description)
                u->description = FUNC1("Root Slice");
        if (!u->documentation)
                u->documentation = FUNC2("man:systemd.special(7)");

        return 1;
}