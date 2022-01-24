#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * ci; } ;
typedef  TYPE_1__ lua_State ;
struct TYPE_7__ {int /*<<< orphan*/  source; } ;
typedef  int /*<<< orphan*/  CallInfo ;

/* Variables and functions */
 int LUA_IDSIZE ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,char*,int,char const*) ; 

__attribute__((used)) static void FUNC6 (lua_State *L, const char *msg) {
  CallInfo *ci = L->ci;
  if (FUNC3(ci)) {  /* is Lua code? */
    char buff[LUA_IDSIZE];  /* add file:line information */
    int line = FUNC0(L, ci);
    FUNC4(buff, FUNC2(FUNC1(ci)->source), LUA_IDSIZE);
    FUNC5(L, "%s:%d: %s", buff, line, msg);
  }
}