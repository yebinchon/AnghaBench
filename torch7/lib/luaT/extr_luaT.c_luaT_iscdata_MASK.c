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
 int /*<<< orphan*/  CDATA_MT_KEY ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int LUA_TUSERDATA ; 
 int /*<<< orphan*/  cdatamt ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int FUNC11 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC12(lua_State *L, int ud)
{
  int type = FUNC11(L, ud);
  if(type == 10)
    return 1;
  if(type != LUA_TUSERDATA)
    return 0;
  if(!FUNC2(L, ud))
    return 0;

  FUNC5(L, CDATA_MT_KEY);
  FUNC8(L, LUA_REGISTRYINDEX);
  if (FUNC3(L, -1))
  {
    // initialize cdata metatable
    FUNC4(L, 1);
    if(FUNC0(L, cdatamt))
      FUNC1(L, "internal error (could not load cdata mt): %s", FUNC10(L, -1));

    FUNC5(L, CDATA_MT_KEY);
    FUNC6(L, -2);
    FUNC9(L, LUA_REGISTRYINDEX);
  }

  int iscdata = FUNC7(L, -1, -2);
  FUNC4(L, 2);
  return iscdata;
}