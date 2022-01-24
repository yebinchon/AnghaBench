#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_3__ {int /*<<< orphan*/ * name; int /*<<< orphan*/  func; } ;
typedef  TYPE_1__ luaL_Reg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5 (lua_State *l, const luaL_Reg *reg, int nup)
{
    int i;

    FUNC0(l, nup, "too many upvalues");
    for (; reg->name != NULL; reg++) {  /* fill the table with given functions */
        for (i = 0; i < nup; i++)  /* copy upvalues to the top */
            FUNC3(l, -nup);
        FUNC2(l, reg->func, nup);  /* closure with those upvalues */
        FUNC4(l, -(nup + 2), reg->name);
    }
    FUNC1(l, nup);  /* remove upvalues */
}