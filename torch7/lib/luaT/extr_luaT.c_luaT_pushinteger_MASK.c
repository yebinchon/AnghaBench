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
typedef  scalar_t__ ptrdiff_t ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  lua_Number ;
typedef  int /*<<< orphan*/  lua_Integer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC2(lua_State *L, ptrdiff_t n)
{
#if LUA_VERSION_NUM >= 503
  /* Only push the value as an integer if it fits in lua_Integer,
   or if the lua_Number representation will be even worse */
  if (sizeof(lua_Integer) >= sizeof(ptrdiff_t) || sizeof(lua_Number) <= sizeof(lua_Integer)) {
    lua_pushinteger(L, n);
  } else {
    lua_pushnumber(L, (lua_Number)n);
  }
#else
  FUNC1(L, (lua_Number)n);
#endif
}