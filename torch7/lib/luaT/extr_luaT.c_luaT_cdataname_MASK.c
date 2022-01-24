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
 int /*<<< orphan*/  cdataname ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC10 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static const char* FUNC11(lua_State *L, int ud, const char *tname)
{
  FUNC6(L, "__cdataname");
  FUNC8(L, LUA_REGISTRYINDEX);
  if(FUNC3(L,-1))
  {
    FUNC5(L, 1);

    if(FUNC0(L, cdataname)) /* did something go wrong? */
      FUNC1(L, "internal error (could not load cdataname): %s", FUNC10(L, -1));

    FUNC6(L, "__cdataname");
    FUNC7(L, -2);
    FUNC9(L, LUA_REGISTRYINDEX);
  }
  if(!FUNC2(L, -1)) /* should not happen */
    FUNC1(L, "internal error (cdataname is not a function)");

  FUNC7(L, ud);
  if(tname)
    FUNC6(L, tname);
  if(FUNC4(L, (tname ? 2 : 1), 1, 0))
    FUNC1(L, "internal error (cdataname): %s", FUNC10(L, -1));

  tname = FUNC10(L, -1);
  FUNC5(L, 1);

  return tname;
}