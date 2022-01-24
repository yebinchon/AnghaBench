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
 int LUA_MAXINPUT ; 
 char* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,size_t) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,char const*) ; 
 size_t FUNC6 (char*) ; 

__attribute__((used)) static int FUNC7 (lua_State *L, int firstline) {
  char buffer[LUA_MAXINPUT];
  char *b = buffer;
  size_t l;
  const char *prmt = FUNC0(L, firstline);
  int readstatus = FUNC5(L, b, prmt);
  if (readstatus == 0)
    return 0;  /* no input (prompt will be popped by caller) */
  FUNC2(L, 1);  /* remove prompt */
  l = FUNC6(b);
  if (l > 0 && b[l-1] == '\n')  /* line ends with newline? */
    b[--l] = '\0';  /* remove it */
  if (firstline && b[0] == '=')  /* for compatibility with 5.2, ... */
    FUNC3(L, "return %s", b + 1);  /* change '=' to 'return' */
  else
    FUNC4(L, b, l);
  FUNC1(L, b);
  return 1;
}