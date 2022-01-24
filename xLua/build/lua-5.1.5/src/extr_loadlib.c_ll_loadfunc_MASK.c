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
 void* FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 void** FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,void*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4 (lua_State *L, const char *path, const char *sym) {
  void **reg = FUNC1(L, path);
  if (*reg == NULL) *reg = FUNC0(L, path);
  if (*reg == NULL)
    return ERRLIB;  /* unable to load library */
  else {
    lua_CFunction f = FUNC2(L, *reg, sym);
    if (f == NULL)
      return ERRFUNC;  /* unable to find function */
    FUNC3(L, f);
    return 0;  /* return function */
  }
}