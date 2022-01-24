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
 scalar_t__ LUA_TSTRING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6 (lua_State *L) {
  const char *msg = FUNC4(L, 1);
  if (msg == NULL) {  /* is error object not a string? */
    if (FUNC0(L, 1, "__tostring") &&  /* does it have a metamethod */
        FUNC5(L, -1) == LUA_TSTRING)  /* that produces a string? */
      return 1;  /* that is the message */
    else
      msg = FUNC3(L, "(error object is a %s value)",
                               FUNC2(L, 1));
  }
  FUNC1(L, L, msg, 1);  /* append a standard traceback */
  return 1;  /* return the traceback */
}