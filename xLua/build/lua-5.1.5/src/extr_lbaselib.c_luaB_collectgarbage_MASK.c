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
typedef  int lua_Number ;

/* Variables and functions */
#define  LUA_GCCOLLECT 134 
#define  LUA_GCCOUNT 133 
 int const LUA_GCCOUNTB ; 
#define  LUA_GCRESTART 132 
#define  LUA_GCSETPAUSE 131 
#define  LUA_GCSETSTEPMUL 130 
#define  LUA_GCSTEP 129 
#define  LUA_GCSTOP 128 
 int FUNC0 (int /*<<< orphan*/ *,int,char*,char const* const*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int const,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5 (lua_State *L) {
  static const char *const opts[] = {"stop", "restart", "collect",
    "count", "step", "setpause", "setstepmul", NULL};
  static const int optsnum[] = {LUA_GCSTOP, LUA_GCRESTART, LUA_GCCOLLECT,
    LUA_GCCOUNT, LUA_GCSTEP, LUA_GCSETPAUSE, LUA_GCSETSTEPMUL};
  int o = FUNC0(L, 1, "collect", opts);
  int ex = FUNC1(L, 2, 0);
  int res = FUNC2(L, optsnum[o], ex);
  switch (optsnum[o]) {
    case LUA_GCCOUNT: {
      int b = FUNC2(L, LUA_GCCOUNTB, 0);
      FUNC4(L, res + ((lua_Number)b/1024));
      return 1;
    }
    case LUA_GCSTEP: {
      FUNC3(L, res);
      return 1;
    }
    default: {
      FUNC4(L, res);
      return 1;
    }
  }
}