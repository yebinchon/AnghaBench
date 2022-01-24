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
 int /*<<< orphan*/  LJ_ERR_BADMODN ; 
 int /*<<< orphan*/  LUA_GLOBALSINDEX ; 
 int LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,char const*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,char const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(lua_State *L)
{
  const char *modname = FUNC2(L, 1);
  int loaded = FUNC5(L) + 1;  /* index of _LOADED table */
  FUNC4(L, LUA_REGISTRYINDEX, "_LOADED");
  FUNC4(L, loaded, modname);  /* get _LOADED[modname] */
  if (!FUNC7(L, -1)) {  /* not found? */
    FUNC8(L, 1);  /* remove previous result */
    /* try global variable (and create one if it does not exist) */
    if (FUNC3(L, LUA_GLOBALSINDEX, modname, 1) != NULL)
      FUNC1(L, LJ_ERR_BADMODN, modname);
    FUNC9(L, -1);
    FUNC10(L, loaded, modname);  /* _LOADED[modname] = new table */
  }
  /* check whether table already has a _NAME field */
  FUNC4(L, -1, "_NAME");
  if (!FUNC6(L, -1)) {  /* is table an initialized module? */
    FUNC8(L, 1);
  } else {  /* no; initialize it */
    FUNC8(L, 1);
    FUNC11(L, modname);
  }
  FUNC9(L, -1);
  FUNC12(L);
  FUNC0(L, loaded - 1);
  return 0;
}