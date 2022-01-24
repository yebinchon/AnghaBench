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
struct TYPE_8__ {int /*<<< orphan*/  top; } ;
typedef  TYPE_1__ lua_State ;
typedef  int BCReg ;

/* Variables and functions */
 scalar_t__ LJ_DUALNUM ; 
 int LJ_TNUMX ; 
 int LJ_TSTR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/ * lj_obj_itypename ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

void FUNC6(lua_State *L, BCReg ra, BCReg tp)
{
  L->top = FUNC0(L);
  ra++; tp--;
  FUNC5(LJ_DUALNUM || tp != ~LJ_TNUMX);  /* ISTYPE -> ISNUM broken. */
  if (LJ_DUALNUM && tp == ~LJ_TNUMX) FUNC2(L, ra);
  else if (tp == ~LJ_TNUMX+1) FUNC3(L, ra);
  else if (tp == ~LJ_TSTR) FUNC4(L, ra);
  else FUNC1(L, ra, lj_obj_itypename[tp]);
}