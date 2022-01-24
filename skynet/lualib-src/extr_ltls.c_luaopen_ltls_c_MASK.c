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
struct TYPE_3__ {char* member_0; int /*<<< orphan*/ * member_1; } ;
typedef  TYPE_1__ luaL_Reg ;

/* Variables and functions */
 int /*<<< orphan*/ * lnew_ctx ; 
 int /*<<< orphan*/ * lnew_tls ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 

int
FUNC2(lua_State* L) {
    luaL_Reg l[] = {
        {"newctx", lnew_ctx},
        {"newtls", lnew_tls},
        {NULL, NULL},
    };
    FUNC0(L);
    FUNC1(L, l);
    return 1;
}