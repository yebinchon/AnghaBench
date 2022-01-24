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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* LUA_INTEGER_FMT ; 
 char* LUA_NUMBER_FMT ; 
 scalar_t__ LUA_TNUMBER ; 
 int FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (char const*,int,size_t,int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int,size_t*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC9 (lua_State *L, FILE *f, int arg) {
  int nargs = FUNC4(L) - arg;
  int status = 1;
  for (; nargs--; arg++) {
    if (FUNC8(L, arg) == LUA_TNUMBER) {
      /* optimization: could be done exactly as for strings */
      int len = FUNC5(L, arg)
                ? FUNC0(f, LUA_INTEGER_FMT, FUNC6(L, arg))
                : FUNC0(f, LUA_NUMBER_FMT, FUNC7(L, arg));
      status = status && (len > 0);
    }
    else {
      size_t l;
      const char *s = FUNC2(L, arg, &l);
      status = status && (FUNC1(s, sizeof(char), l, f) == l);
    }
  }
  if (status) return 1;  /* file handle already on stack top */
  else return FUNC3(L, status, NULL);
}