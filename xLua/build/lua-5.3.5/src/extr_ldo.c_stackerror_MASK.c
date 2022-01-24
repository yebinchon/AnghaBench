#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int nCcalls; } ;
typedef  TYPE_1__ lua_State ;

/* Variables and functions */
 int LUAI_MAXCCALLS ; 
 int /*<<< orphan*/  LUA_ERRERR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 

__attribute__((used)) static void FUNC2 (lua_State *L) {
  if (L->nCcalls == LUAI_MAXCCALLS)
    FUNC1(L, "C stack overflow");
  else if (L->nCcalls >= (LUAI_MAXCCALLS + (LUAI_MAXCCALLS>>3)))
    FUNC0(L, LUA_ERRERR);  /* error while handing stack error */
}