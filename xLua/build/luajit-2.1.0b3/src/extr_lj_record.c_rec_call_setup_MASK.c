#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_9__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  size_t ptrdiff_t ;
struct TYPE_10__ {int* base; size_t maxslot; TYPE_9__* L; } ;
typedef  TYPE_1__ jit_State ;
struct TYPE_12__ {int /*<<< orphan*/ * base; } ;
struct TYPE_11__ {int tab; int mobj; int /*<<< orphan*/  mobjv; int /*<<< orphan*/  tabv; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  int TRef ;
typedef  TYPE_2__ RecordIndex ;
typedef  size_t BCReg ;

/* Variables and functions */
 size_t LJ_FR2 ; 
 int /*<<< orphan*/  LJ_TRERR_NOMM ; 
 int /*<<< orphan*/  MM_call ; 
 int TREF_FRAME ; 
 int /*<<< orphan*/  FUNC0 (TYPE_9__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(jit_State *J, BCReg func, ptrdiff_t nargs)
{
  RecordIndex ix;
  TValue *functv = &J->L->base[func];
  TRef kfunc, *fbase = &J->base[func];
  ptrdiff_t i;
  (void)FUNC2(J, func); /* Ensure func has a reference. */
  for (i = 1; i <= nargs; i++)
    (void)FUNC2(J, func+LJ_FR2+i);  /* Ensure all args have a reference. */
  if (!FUNC6(fbase[0])) {  /* Resolve __call metamethod. */
    ix.tab = fbase[0];
    FUNC0(J->L, &ix.tabv, functv);
    if (!FUNC3(J, &ix, MM_call) || !FUNC6(ix.mobj))
      FUNC4(J, LJ_TRERR_NOMM);
    for (i = ++nargs; i > LJ_FR2; i--)  /* Shift arguments up. */
      fbase[i+LJ_FR2] = fbase[i+LJ_FR2-1];
#if LJ_FR2
    fbase[2] = fbase[0];
#endif
    fbase[0] = ix.mobj;  /* Replace function. */
    functv = &ix.mobjv;
  }
  kfunc = FUNC5(J, FUNC1(functv), fbase[0]);
#if LJ_FR2
  fbase[0] = kfunc;
  fbase[1] = TREF_FRAME;
#else
  fbase[0] = kfunc | TREF_FRAME;
#endif
  J->maxslot = (BCReg)nargs;
}