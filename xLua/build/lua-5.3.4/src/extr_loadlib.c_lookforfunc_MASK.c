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
typedef  int /*<<< orphan*/ * lua_CFunction ;

/* Variables and functions */
 int ERRFUNC ; 
 int ERRLIB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,void*) ; 
 void* FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 void* FUNC2 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,void*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6 (lua_State *L, const char *path, const char *sym) {
  void *reg = FUNC1(L, path);  /* check loaded C libraries */
  if (reg == NULL) {  /* must load library? */
    reg = FUNC2(L, path, *sym == '*');  /* global symbols if 'sym'=='*' */
    if (reg == NULL) return ERRLIB;  /* unable to load library */
    FUNC0(L, path, reg);
  }
  if (*sym == '*') {  /* loading only library (no function)? */
    FUNC4(L, 1);  /* return 'true' */
    return 0;  /* no errors */
  }
  else {
    lua_CFunction f = FUNC3(L, reg, sym);
    if (f == NULL)
      return ERRFUNC;  /* unable to find function */
    FUNC5(L, f);  /* else create new function */
    return 0;  /* no errors */
  }
}