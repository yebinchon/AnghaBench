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
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int) ; 

void
FUNC11(lua_State *L, int index)
{
    if (index < 0) {
        index = FUNC1(L) + index + 1;
    }

    FUNC7(L, -2); /* stack: table key value key */
    FUNC8(L, index);
    if (FUNC3(L, -1)) {
        FUNC6(L, 1); /* stack: table key value */
        FUNC9(L, index); /* stack: table */

    } else {
        if (!FUNC4(L, -1)) {
            /* just inserted one value */
            FUNC0(L, 4, 0);
                /* stack: table key value value table */
            FUNC2(L, -2);
                /* stack: table key value table value */
            FUNC10(L, -2, 1);
                /* stack: table key value table */
            FUNC2(L, -2);
                /* stack: table key table value */

            FUNC10(L, -2, 2); /* stack: table key table */

            FUNC9(L, index); /* stack: table */

        } else {
            /* stack: table key value table */
            FUNC2(L, -2); /* stack: table key table value */

            FUNC10(L, -2, FUNC5(L, -2) + 1);
                /* stack: table key table  */
            FUNC6(L, 2); /* stack: table */
        }
    }
}