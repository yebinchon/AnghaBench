#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  luaL_Buffer ;
struct TYPE_6__ {int /*<<< orphan*/ * L; } ;
typedef  TYPE_1__ MatchState ;

/* Variables and functions */
#define  LUA_TFUNCTION 129 
#define  LUA_TTABLE 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int FUNC11 (TYPE_1__*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,char const*,char const*) ; 

__attribute__((used)) static void FUNC13 (MatchState *ms, luaL_Buffer *b, const char *s,
                                       const char *e, int tr) {
  lua_State *L = ms->L;
  switch (tr) {
    case LUA_TFUNCTION: {
      int n;
      FUNC9(L, 3);
      n = FUNC11(ms, s, e);
      FUNC4(L, n, 1);
      break;
    }
    case LUA_TTABLE: {
      FUNC12(ms, 0, s, e);
      FUNC5(L, 3);
      break;
    }
    default: {  /* LUA_TNUMBER or LUA_TSTRING */
      FUNC0(ms, b, s, e);
      return;
    }
  }
  if (!FUNC10(L, -1)) {  /* nil or false? */
    FUNC7(L, 1);
    FUNC8(L, s, e - s);  /* keep original text */
  }
  else if (!FUNC6(L, -1))
    FUNC2(L, "invalid replacement value (a %s)", FUNC3(L, -1));
  FUNC1(b);  /* add result to accumulator */
}