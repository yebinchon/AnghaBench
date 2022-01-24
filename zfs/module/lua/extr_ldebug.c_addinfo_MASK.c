#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * ci; } ;
typedef  TYPE_2__ lua_State ;
struct TYPE_8__ {TYPE_1__* p; } ;
struct TYPE_6__ {int /*<<< orphan*/ * source; } ;
typedef  int /*<<< orphan*/  TString ;
typedef  int /*<<< orphan*/  CallInfo ;

/* Variables and functions */
 int LUA_IDSIZE ; 
 TYPE_4__* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*,char*,int,char const*) ; 

__attribute__((used)) static void FUNC6 (lua_State *L, const char *msg) {
  CallInfo *ci = L->ci;
  if (FUNC3(ci)) {  /* is Lua code? */
    char buff[LUA_IDSIZE];  /* add file:line information */
    int line = FUNC1(ci);
    TString *src = FUNC0(ci)->p->source;
    if (src)
      FUNC4(buff, FUNC2(src), LUA_IDSIZE);
    else {  /* no source available; use "?" instead */
      buff[0] = '?'; buff[1] = '\0';
    }
    FUNC5(L, "%s:%d: %s", buff, line, msg);
  }
}