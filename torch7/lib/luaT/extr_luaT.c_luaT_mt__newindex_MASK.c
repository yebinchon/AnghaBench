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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int FUNC11 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC12(lua_State *L)
{
  if(!FUNC4(L, 1))
    FUNC0(L, "critical internal indexing error: no metatable found");

  if(!FUNC7(L, -1))
    FUNC0(L, "critical internal indexing error: not a metatable");

  /* test for __newindex__ method first */
  FUNC3(L, -1, "__newindex__");
  if(!FUNC6(L, -1))
  {
    int result;

    if(!FUNC5(L, -1))
      FUNC0(L, "critical internal indexing error: __newindex__ is not a function");

    FUNC9(L, 1);
    FUNC9(L, 2);
    FUNC9(L, 3);

    FUNC2(L, 3, 1); /* DEBUG: risque: faut vraiment retourner qqch */

    result = FUNC11(L, -1);
    FUNC8(L, 1);

    if(result)
      return 0;
  }
  else
    FUNC8(L, 1); /* remove nil __newindex__ on the stack */

  FUNC8(L, 1);    /* pop the metatable */
  if(FUNC7(L, 1))
    FUNC10(L, 1);
  else
    FUNC0(L, "the class %s cannot be indexed", FUNC1(L, 1));

  return 0;
}