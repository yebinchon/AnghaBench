#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ top; } ;
typedef  TYPE_1__ lua_State ;
typedef  int /*<<< orphan*/  GCtab ;

/* Variables and functions */
 int /*<<< orphan*/  LJ_ERR_BADMODN ; 
 int /*<<< orphan*/  LUA_GLOBALSINDEX ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,char const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,char const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

__attribute__((used)) static GCtab *FUNC8(lua_State *L, const char *libname, int hsize)
{
  if (libname) {
    FUNC1(L, LUA_REGISTRYINDEX, "_LOADED", 16);
    FUNC3(L, -1, libname);
    if (!FUNC7(L->top-1)) {
      L->top--;
      if (FUNC1(L, LUA_GLOBALSINDEX, libname, hsize) != NULL)
	FUNC0(L, LJ_ERR_BADMODN, libname);
      FUNC5(L, L->top, FUNC6(L->top-1));
      L->top++;
      FUNC4(L, -3, libname);  /* _LOADED[libname] = new table */
    }
    L->top--;
    FUNC5(L, L->top-1, FUNC6(L->top));
  } else {
    FUNC2(L, 0, hsize);
  }
  return FUNC6(L->top-1);
}