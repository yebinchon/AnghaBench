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
typedef  int /*<<< orphan*/  searchers ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/ * lua_CFunction ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ * const,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,char*) ; 
#define  searcher_C 131 
#define  searcher_Croot 130 
#define  searcher_Lua 129 
#define  searcher_preload 128 

__attribute__((used)) static void FUNC5 (lua_State *L) {
  static const lua_CFunction searchers[] =
    {searcher_preload, searcher_Lua, searcher_C, searcher_Croot, NULL};
  int i;
  /* create 'searchers' table */
  FUNC0(L, sizeof(searchers)/sizeof(searchers[0]) - 1, 0);
  /* fill it with predefined searchers */
  for (i=0; searchers[i] != NULL; i++) {
    FUNC2(L, -2);  /* set 'package' as upvalue for all searchers */
    FUNC1(L, searchers[i], 1);
    FUNC3(L, -2, i+1);
  }
#if defined(LUA_COMPAT_LOADERS)
  lua_pushvalue(L, -1);  /* make a copy of 'searchers' table */
  lua_setfield(L, -3, "loaders");  /* put it in field 'loaders' */
#endif
  FUNC4(L, -2, "searchers");  /* put it in field 'searchers' */
}