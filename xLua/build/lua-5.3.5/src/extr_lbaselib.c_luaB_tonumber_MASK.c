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
typedef  int lua_Integer ;

/* Variables and functions */
 scalar_t__ LUA_TNUMBER ; 
 int /*<<< orphan*/  LUA_TSTRING ; 
 char const* FUNC0 (char const*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 size_t FUNC9 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC10 (int /*<<< orphan*/ *,int,size_t*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC12 (lua_State *L) {
  if (FUNC5(L, 2)) {  /* standard conversion? */
    FUNC2(L, 1);
    if (FUNC11(L, 1) == LUA_TNUMBER) {  /* already a number? */
      FUNC8(L, 1);  /* yes; return it */
      return 1;
    }
    else {
      size_t l;
      const char *s = FUNC10(L, 1, &l);
      if (s != NULL && FUNC9(L, s) == l + 1)
        return 1;  /* successful conversion to number */
      /* else not a number */
    }
  }
  else {
    size_t l;
    const char *s;
    lua_Integer n = 0;  /* to avoid warnings */
    lua_Integer base = FUNC3(L, 2);
    FUNC4(L, 1, LUA_TSTRING);  /* no numbers as strings */
    s = FUNC10(L, 1, &l);
    FUNC1(L, 2 <= base && base <= 36, 2, "base out of range");
    if (FUNC0(s, (int)base, &n) == s + l) {
      FUNC6(L, n);
      return 1;
    }  /* else not a number */
  }  /* else not a number */
  FUNC7(L);  /* not a number */
  return 1;
}