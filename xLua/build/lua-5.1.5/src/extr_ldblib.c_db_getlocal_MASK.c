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
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC9 (lua_State *L) {
  int arg;
  lua_State *L1 = FUNC0(L, &arg);
  lua_Debug ar;
  const char *name;
  if (!FUNC4(L1, FUNC2(L, arg+1), &ar))  /* out of range? */
    return FUNC1(L, arg+1, "level out of range");
  name = FUNC3(L1, &ar, FUNC2(L, arg+2));
  if (name) {
    FUNC8(L1, L, 1);
    FUNC6(L, name);
    FUNC7(L, -2);
    return 2;
  }
  else {
    FUNC5(L);
    return 1;
  }
}