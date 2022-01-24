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
 int /*<<< orphan*/  LUA_MULTRET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int FUNC10 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC11(lua_State *L)
{
  if(!FUNC3(L, 1))
    FUNC0(L, "critical internal indexing error: no metatable found");

  if(!FUNC7(L, -1))
    FUNC0(L, "critical internal indexing error: not a metatable");

  /* test for __index__ method first */
  FUNC2(L, -1, "__index__");
  if(!FUNC6(L, -1))
  {
    int result;

    if(!FUNC5(L, -1))
      FUNC0(L, "critical internal indexing error: __index__ is not a function");

    FUNC9(L, 1);
    FUNC9(L, 2);

    FUNC1(L, 2, LUA_MULTRET); /* DEBUG: risque: faut vraiment retourner 1 ou 2 valeurs... */

    result = FUNC10(L, -1);
    FUNC8(L, 1);

    if(result)
      return 1;

    /* on the stack: 1. the object 2. the value 3. the metatable */
    /* apparently, __index wants only one element returned */
    /* return lua_gettop(L)-3; */

  }
  else
    FUNC8(L, 1); /* remove nil __index__ on the stack */

  FUNC9(L, 2);
  FUNC4(L, -2);

  return 1;
}