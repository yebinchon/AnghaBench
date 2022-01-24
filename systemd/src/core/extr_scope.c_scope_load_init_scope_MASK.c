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
struct TYPE_5__ {int transient; int perpetual; int default_dependencies; int /*<<< orphan*/  documentation; scalar_t__ description; } ;
typedef  TYPE_1__ Unit ;

/* Variables and functions */
 int /*<<< orphan*/  SPECIAL_INIT_SCOPE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(Unit *u) {
        FUNC0(u);

        if (!FUNC3(u, SPECIAL_INIT_SCOPE))
                return 0;

        u->transient = true;
        u->perpetual = true;

        /* init.scope is a bit special, as it has to stick around forever. Because of its special semantics we
         * synthesize it here, instead of relying on the unit file on disk. */

        u->default_dependencies = false;

        /* Prettify things, if we can. */
        if (!u->description)
                u->description = FUNC1("System and Service Manager");
        if (!u->documentation)
                (void) FUNC2(&u->documentation, "man:systemd(1)");

        return 1;
}