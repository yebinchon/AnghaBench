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
 scalar_t__ FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  stdin ; 
 size_t FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(lua_State *L, int firstline)
{
  char buf[LUA_MAXINPUT];
  FUNC4(L, firstline);
  if (FUNC0(buf, LUA_MAXINPUT, stdin)) {
    size_t len = FUNC3(buf);
    if (len > 0 && buf[len-1] == '\n')
      buf[len-1] = '\0';
    if (firstline && buf[0] == '=')
      FUNC1(L, "return %s", buf+1);
    else
      FUNC2(L, buf);
    return 1;
  }
  return 0;
}