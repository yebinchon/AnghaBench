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
struct TYPE_5__ {scalar_t__ load_state; } ;
typedef  TYPE_1__ Unit ;
typedef  int /*<<< orphan*/  Target ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*) ; 
 scalar_t__ UNIT_LOADED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC4(Unit *u) {
        Target *t = FUNC0(u);
        int r;

        FUNC1(t);

        r = FUNC3(u, true);
        if (r < 0)
                return r;

        if (u->load_state != UNIT_LOADED)
                return 0;

        /* This is a new unit? Then let's add in some extras */
        return FUNC2(t);
}