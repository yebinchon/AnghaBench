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
 int /*<<< orphan*/  LJ_FR2 ; 
 int /*<<< orphan*/  LJ_TRERR_NOMM ; 
 int /*<<< orphan*/  MM_call ; 
 int TREF_FRAME ; 
 int /*<<< orphan*/  FUNC0 (TYPE_9__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(jit_State *J, BCReg func, ptrdiff_t nargs)
{
  RecordIndex ix;
  TValue *functv = &J->L->base[func];
  TRef *fbase = &J->base[func];
  ptrdiff_t i;
  FUNC5(!LJ_FR2);  /* TODO_FR2: handle different frame setup. */
  for (i = 0; i <= nargs; i++)
    (void)FUNC2(J, func+i);  /* Ensure func and all args have a reference. */
  if (!FUNC7(fbase[0])) {  /* Resolve __call metamethod. */
    ix.tab = fbase[0];
    FUNC0(J->L, &ix.tabv, functv);
    if (!FUNC3(J, &ix, MM_call) || !FUNC7(ix.mobj))
      FUNC4(J, LJ_TRERR_NOMM);
    for (i = ++nargs; i > 0; i--)  /* Shift arguments up. */
      fbase[i] = fbase[i-1];
    fbase[0] = ix.mobj;  /* Replace function. */
    functv = &ix.mobjv;
  }
  fbase[0] = TREF_FRAME | FUNC6(J, FUNC1(functv), fbase[0]);
  J->maxslot = (BCReg)nargs;
}