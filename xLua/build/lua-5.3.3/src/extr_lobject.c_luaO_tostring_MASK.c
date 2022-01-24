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
typedef  int /*<<< orphan*/  buff ;
typedef  int /*<<< orphan*/  StkId ;

/* Variables and functions */
 int MAXNUMBER2STR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 char FUNC4 () ; 
 size_t FUNC5 (char*,int,int /*<<< orphan*/ ) ; 
 size_t FUNC6 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC8 (char*,char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

void FUNC11 (lua_State *L, StkId obj) {
  char buff[MAXNUMBER2STR];
  size_t len;
  FUNC3(FUNC10(obj));
  if (FUNC9(obj))
    len = FUNC5(buff, sizeof(buff), FUNC1(obj));
  else {
    len = FUNC6(buff, sizeof(buff), FUNC0(obj));
#if !defined(LUA_COMPAT_FLOATSTRING)
    if (buff[FUNC8(buff, "-0123456789")] == '\0') {  /* looks like an int? */
      buff[len++] = FUNC4();
      buff[len++] = '0';  /* adds '.0' to result */
    }
#endif
  }
  FUNC7(L, obj, FUNC2(L, buff, len));
}