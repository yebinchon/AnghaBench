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
typedef  int /*<<< orphan*/  lua_Debug ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC11 (lua_State *L) {
  int arg;
  const char *name;
  lua_State *L1 = FUNC1(L, &arg);
  lua_Debug ar;
  int level = (int)FUNC4(L, arg + 1);
  int nvar = (int)FUNC4(L, arg + 2);
  if (!FUNC5(L1, level, &ar))  /* out of range? */
    return FUNC2(L, arg+1, "level out of range");
  FUNC3(L, arg+3);
  FUNC9(L, arg+3);
  FUNC0(L, L1, 1);
  FUNC10(L, L1, 1);
  name = FUNC8(L1, &ar, nvar);
  if (name == NULL)
    FUNC6(L1, 1);  /* pop value (if not popped by 'lua_setlocal') */
  FUNC7(L, name);
  return 1;
}