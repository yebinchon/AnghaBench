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
typedef  int /*<<< orphan*/  mp_buf ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 

void FUNC7(lua_State *L, mp_buf *buf, int level) {
    size_t len = 0;

    /* First step: count keys into table. No other way to do it with the
     * Lua API, we need to iterate a first time. Note that an alternative
     * would be to do a single run, and then hack the buffer to insert the
     * map opcodes for message pack. Too hackish for this lib. */
    FUNC0(L, 3, "in function mp_encode_lua_table_as_map");
    FUNC3(L);
    while(FUNC1(L,-2)) {
        FUNC2(L,1); /* remove value, keep key for next iteration. */
        len++;
    }

    /* Step two: actually encoding of the map. */
    FUNC6(L,buf,len);
    FUNC3(L);
    while(FUNC1(L,-2)) {
        /* Stack: ... key value */
        FUNC4(L,-2); /* Stack: ... key value key */
        FUNC5(L,buf,level+1); /* encode key */
        FUNC5(L,buf,level+1); /* encode val */
    }
}