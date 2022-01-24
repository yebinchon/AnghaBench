#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_10__* L; int /*<<< orphan*/ * base; } ;
typedef  TYPE_1__ jit_State ;
struct TYPE_13__ {int /*<<< orphan*/  mobjv; int /*<<< orphan*/  mobj; int /*<<< orphan*/  tabv; int /*<<< orphan*/  tab; } ;
struct TYPE_11__ {int /*<<< orphan*/ * base; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  int /*<<< orphan*/  TRef ;
typedef  TYPE_2__ RecordIndex ;
typedef  int BCReg ;

/* Variables and functions */
 int /*<<< orphan*/  IRCALL_lj_tab_len ; 
 scalar_t__ LJ_52 ; 
 int /*<<< orphan*/  LJ_FR2 ; 
 int /*<<< orphan*/  LJ_TRERR_NOMM ; 
 int /*<<< orphan*/  MM_len ; 
 int /*<<< orphan*/  TREF_NIL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_10__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lj_cont_ra ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int) ; 
 scalar_t__ FUNC3 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static TRef FUNC8(jit_State *J, TRef tr, TValue *tv)
{
  RecordIndex ix;
  ix.tab = tr;
  FUNC0(J->L, &ix.tabv, tv);
  if (FUNC3(J, &ix, MM_len)) {
    BCReg func = FUNC5(J, lj_cont_ra);
    TRef *base = J->base + func;
    TValue *basev = J->L->base + func;
    base[0] = ix.mobj; FUNC0(J->L, basev+0, &ix.mobjv);
    base += LJ_FR2;
    basev += LJ_FR2;
    base[1] = tr; FUNC0(J->L, basev+1, tv);
#if LJ_52
    base[2] = tr; copyTV(J->L, basev+2, tv);
#else
    base[2] = TREF_NIL; FUNC6(basev+2);
#endif
    FUNC2(J, func, 2);
  } else {
    if (LJ_52 && FUNC7(tr))
      return FUNC1(J, IRCALL_lj_tab_len, tr);
    FUNC4(J, LJ_TRERR_NOMM);
  }
  return 0;  /* No result yet. */
}