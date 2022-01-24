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
typedef  scalar_t__ lua_CFunction ;

/* Variables and functions */
 int /*<<< orphan*/  LJ_MAX_BUF ; 
 int PACKAGE_ERR_FUNC ; 
 int PACKAGE_ERR_LIB ; 
 int PACKAGE_ERR_LOAD ; 
 int /*<<< orphan*/  SYMPREFIX_BC ; 
 int /*<<< orphan*/  SYMPREFIX_CF ; 
 char* FUNC0 (void*,char const*) ; 
 void* FUNC1 (int /*<<< orphan*/ *,char const*,int) ; 
 void** FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,void*,char const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 char const* FUNC8 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(lua_State *L, const char *path, const char *name, int r)
{
  void **reg = FUNC2(L, path);
  if (*reg == NULL) *reg = FUNC1(L, path, (*name == '*'));
  if (*reg == NULL) {
    return PACKAGE_ERR_LIB;  /* Unable to load library. */
  } else if (*name == '*') {  /* Only load library into global namespace. */
    FUNC6(L, 1);
    return 0;
  } else {
    const char *sym = r ? name : FUNC8(L, name, SYMPREFIX_CF);
    lua_CFunction f = FUNC3(L, *reg, sym);
    if (f) {
      FUNC7(L, f);
      return 0;
    }
    if (!r) {
      const char *bcdata = FUNC0(*reg, FUNC8(L, name, SYMPREFIX_BC));
      FUNC5(L, 1);
      if (bcdata) {
	if (FUNC4(L, bcdata, LJ_MAX_BUF, name) != 0)
	  return PACKAGE_ERR_LOAD;
	return 0;
      }
    }
    return PACKAGE_ERR_FUNC;  /* Unable to find function. */
  }
}