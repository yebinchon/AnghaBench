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
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  LUA_TTABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 

int FUNC8(lua_State *L)
{
  if( (FUNC4(L) != 2) && (FUNC4(L) != 3) )
    FUNC2(L, "expecting: string table [ctype]");

  FUNC0(L, 1);
  FUNC1(L, 2, LUA_TTABLE);

  if(FUNC4(L) == 3)
  {
    if(!FUNC3(L, 3, FUNC7(L, 1)))
      FUNC2(L, "could not register cdata type -- missing ffi library?");
  }

  /* registry[name] = metatable */
  FUNC5(L, 1);
  FUNC5(L, 2);
  FUNC6(L, LUA_REGISTRYINDEX);

  /* registry[metatable] = tname */
  FUNC5(L, 2);
  FUNC5(L, 1);
  FUNC6(L, LUA_REGISTRYINDEX);

  return 0;
}