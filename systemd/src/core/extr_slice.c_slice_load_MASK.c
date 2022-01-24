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
struct TYPE_8__ {scalar_t__ load_state; } ;
typedef  TYPE_1__ Unit ;
typedef  int /*<<< orphan*/  Slice ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*) ; 
 scalar_t__ UNIT_LOADED ; 
 scalar_t__ UNIT_STUB ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_1__*,int) ; 
 int FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC9(Unit *u) {
        Slice *s = FUNC0(u);
        int r;

        FUNC1(*s);
        FUNC1(u->load_state == UNIT_STUB);

        r = FUNC4(u);
        if (r < 0)
                return r;
        r = FUNC5(u);
        if (r < 0)
                return r;

        r = FUNC7(u, false);
        if (r < 0)
                return r;

        if (u->load_state != UNIT_LOADED)
                return 0;

        /* This is a new unit? Then let's add in some extras */
        r = FUNC8(u);
        if (r < 0)
                return r;

        r = FUNC3(s);
        if (r < 0)
                return r;

        r = FUNC2(s);
        if (r < 0)
                return r;

        return FUNC6(s);
}