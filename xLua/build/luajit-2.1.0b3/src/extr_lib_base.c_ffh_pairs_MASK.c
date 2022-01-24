#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int base; int /*<<< orphan*/ * top; } ;
typedef  TYPE_1__ lua_State ;
typedef  int /*<<< orphan*/  cTValue ;
typedef  int /*<<< orphan*/  TValue ;
typedef  int /*<<< orphan*/  MMS ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FFH_TAILCALL ; 
 scalar_t__ LJ_52 ; 
 int LJ_FR2 ; 
 int /*<<< orphan*/  LUA_TTABLE ; 
 int /*<<< orphan*/  MM_pairs ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(lua_State *L, MMS mm)
{
  TValue *o = FUNC4(L, 1);
  cTValue *mo = FUNC6(L, o, mm);
  if ((LJ_52 || FUNC10(o)) && !FUNC11(mo)) {
    L->top = o+1;  /* Only keep one argument. */
    FUNC1(L, L->base-1-LJ_FR2, mo);  /* Replace callable. */
    return FFH_TAILCALL;
  } else {
    if (!FUNC12(o)) FUNC3(L, 1, LUA_TTABLE);
    if (LJ_FR2) { FUNC1(L, *(o-1), o); o--; }
    FUNC7(L, o-1, FUNC2(FUNC5(L, 1)));
    if (mm == MM_pairs) FUNC9(o+1); else FUNC8(o+1, 0);
    return FUNC0(3);
  }
}