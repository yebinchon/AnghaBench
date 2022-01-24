#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ err; } ;
typedef  TYPE_1__ mp_cur ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 size_t UINT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 

void FUNC6(lua_State *L, mp_cur *c, size_t len) {
    FUNC0(len <= UINT_MAX);
    int index = 1;

    FUNC2(L);
    FUNC1(L, 1, "in function mp_decode_to_lua_array");
    while(len--) {
        FUNC3(L,index++);
        FUNC5(L,c);
        if (c->err) return;
        FUNC4(L,-3);
    }
}