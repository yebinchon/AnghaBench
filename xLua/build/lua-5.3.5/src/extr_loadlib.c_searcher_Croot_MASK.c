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
 int ERRFUNC ; 
 int /*<<< orphan*/  LUA_CSUBSEP ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,char const*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 char* FUNC8 (char const*,char) ; 

__attribute__((used)) static int FUNC9 (lua_State *L) {
  const char *filename;
  const char *name = FUNC3(L, 1);
  const char *p = FUNC8(name, '.');
  int stat;
  if (p == NULL) return 0;  /* is root */
  FUNC5(L, name, p - name);
  filename = FUNC1(L, FUNC7(L, -1), "cpath", LUA_CSUBSEP);
  if (filename == NULL) return 1;  /* root not found */
  if ((stat = FUNC2(L, filename, name)) != 0) {
    if (stat != ERRFUNC)
      return FUNC0(L, 0, filename);  /* real error */
    else {  /* open function not found */
      FUNC4(L, "\n\tno module '%s' in file '%s'", name, filename);
      return 1;
    }
  }
  FUNC6(L, filename);  /* will be 2nd argument to module */
  return 2;
}