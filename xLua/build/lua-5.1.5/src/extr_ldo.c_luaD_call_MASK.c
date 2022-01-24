#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int nCcalls; } ;
typedef  TYPE_1__ lua_State ;
typedef  int /*<<< orphan*/  StkId ;

/* Variables and functions */
 int LUAI_MAXCCALLS ; 
 int /*<<< orphan*/  LUA_ERRERR ; 
 scalar_t__ PCRLUA ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 

void FUNC5 (lua_State *L, StkId func, int nResults) {
  if (++L->nCcalls >= LUAI_MAXCCALLS) {
    if (L->nCcalls == LUAI_MAXCCALLS)
      FUNC3(L, "C stack overflow");
    else if (L->nCcalls >= (LUAI_MAXCCALLS + (LUAI_MAXCCALLS>>3)))
      FUNC2(L, LUA_ERRERR);  /* error while handing stack error */
  }
  if (FUNC1(L, func, nResults) == PCRLUA)  /* is a Lua function? */
    FUNC4(L, 1);  /* call it */
  L->nCcalls--;
  FUNC0(L);
}