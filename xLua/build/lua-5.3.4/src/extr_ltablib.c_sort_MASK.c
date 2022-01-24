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
typedef  int /*<<< orphan*/  IdxT ;

/* Variables and functions */
 int INT_MAX ; 
 int /*<<< orphan*/  LUA_TFUNCTION ; 
 int /*<<< orphan*/  TAB_RW ; 
 int FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6 (lua_State *L) {
  lua_Integer n = FUNC0(L, 1, TAB_RW);
  if (n > 1) {  /* non-trivial interval? */
    FUNC2(L, n < INT_MAX, 1, "array too big");
    if (!FUNC4(L, 2))  /* is there a 2nd argument? */
      FUNC3(L, 2, LUA_TFUNCTION);  /* must be a function */
    FUNC5(L, 2);  /* make sure there are two arguments */
    FUNC1(L, 1, (IdxT)n, 0);
  }
  return 0;
}