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
 int LUACMSGPACK_MAX_NESTING ; 
#define  LUA_TBOOLEAN 131 
 int LUA_TNIL ; 
#define  LUA_TNUMBER 130 
#define  LUA_TSTRING 129 
#define  LUA_TTABLE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

void FUNC9(lua_State *L, mp_buf *buf, int level) {
    int t = FUNC2(L,-1);

    /* Limit the encoding of nested tables to a specified maximum depth, so that
     * we survive when called against circular references in tables. */
    if (t == LUA_TTABLE && level == LUACMSGPACK_MAX_NESTING) t = LUA_TNIL;
    switch(t) {
    case LUA_TSTRING: FUNC7(L,buf); break;
    case LUA_TBOOLEAN: FUNC3(L,buf); break;
    case LUA_TNUMBER:
    #if LUA_VERSION_NUM < 503
        FUNC6(L,buf); break;
    #else
        if (lua_isinteger(L, -1)) {
            mp_encode_lua_integer(L, buf);
        } else {
            mp_encode_lua_number(L, buf);
        }
        break;
    #endif
    case LUA_TTABLE: FUNC8(L,buf,level); break;
    default: FUNC5(L,buf); break;
    }
    FUNC1(L,1);
}