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
typedef  int /*<<< orphan*/  cTValue ;
typedef  int /*<<< orphan*/  TValue ;

/* Variables and functions */
 int LJ_FR2 ; 
 int /*<<< orphan*/  MM_call ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(lua_State *L, TValue *func, TValue *top)
{
  cTValue *mo = FUNC2(L, func, MM_call);
  TValue *p;
  if (!FUNC3(mo))
    FUNC1(L, func);
  for (p = top; p > func+2*LJ_FR2; p--) FUNC0(L, p, p-1);
  if (LJ_FR2) FUNC0(L, func+2, func);
  FUNC0(L, func, mo);
}