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
typedef  scalar_t__ lua_CFunction ;

/* Variables and functions */
 scalar_t__ luaT_lua_newmetatable ; 
 char const* FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 void FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 void FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 void FUNC5 (int /*<<< orphan*/ *,int) ; 

const char* FUNC6(lua_State *L, const char *tname, const char *parent_tname,
                                   lua_CFunction constructor, lua_CFunction destructor, lua_CFunction factory, int moduleidx)
{
  FUNC2(L, luaT_lua_newmetatable);
  FUNC4(L, tname);
  (parent_tname ? (void)FUNC4(L, parent_tname) : FUNC3(L));
  (constructor ? FUNC2(L, constructor) : FUNC3(L));
  (destructor ? FUNC2(L, destructor) : FUNC3(L));
  (factory ? FUNC2(L, factory) : FUNC3(L));
  (moduleidx > 0 ? FUNC5(L, moduleidx) : FUNC3(L));
  FUNC1(L, 6, 1);
  return FUNC0(L, tname);
}