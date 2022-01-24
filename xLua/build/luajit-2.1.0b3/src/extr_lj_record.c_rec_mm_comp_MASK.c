#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  L; } ;
typedef  TYPE_1__ jit_State ;
typedef  int /*<<< orphan*/  cTValue ;
struct TYPE_15__ {int /*<<< orphan*/  metatable; } ;
struct TYPE_14__ {int /*<<< orphan*/  metatable; } ;
struct TYPE_13__ {scalar_t__ mtv; int /*<<< orphan*/  tabv; int /*<<< orphan*/  valv; int /*<<< orphan*/  keyv; int /*<<< orphan*/  tab; int /*<<< orphan*/  val; int /*<<< orphan*/  key; int /*<<< orphan*/  mobjv; int /*<<< orphan*/  mobj; int /*<<< orphan*/  mt; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  int /*<<< orphan*/  TRef ;
typedef  TYPE_2__ RecordIndex ;
typedef  int /*<<< orphan*/  MMS ;

/* Variables and functions */
 int /*<<< orphan*/  IRFL_TAB_META ; 
 int /*<<< orphan*/  IRFL_UDATA_META ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRT_TAB ; 
 int /*<<< orphan*/  IR_EQ ; 
 int /*<<< orphan*/  IR_FLOAD ; 
 int /*<<< orphan*/  MM_le ; 
 int /*<<< orphan*/  MM_lt ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_2__*,int) ; 
 TYPE_4__* FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(jit_State *J, RecordIndex *ix, int op)
{
  ix->tab = ix->val;
  FUNC2(J->L, &ix->tabv, &ix->valv);
  while (1) {
    MMS mm = (op & 2) ? MM_le : MM_lt;  /* Try __le + __lt or only __lt. */
#if LJ_52
    if (!lj_record_mm_lookup(J, ix, mm)) {  /* Lookup mm on 1st operand. */
      ix->tab = ix->key;
      copyTV(J->L, &ix->tabv, &ix->keyv);
      if (!lj_record_mm_lookup(J, ix, mm))  /* Lookup mm on 2nd operand. */
	goto nomatch;
    }
    rec_mm_callcomp(J, ix, op);
    return;
#else
    if (FUNC4(J, ix, mm)) {  /* Lookup mm on 1st operand. */
      cTValue *bv;
      TRef mo1 = ix->mobj;
      TValue mo1v;
      FUNC2(J->L, &mo1v, &ix->mobjv);
      /* Avoid the 2nd lookup and the objcmp if the metatables are equal. */
      bv = &ix->keyv;
      if (FUNC9(bv) && FUNC8(FUNC7(bv)->metatable) == ix->mtv) {
	TRef mt2 = FUNC3(FUNC0(IR_FLOAD, IRT_TAB), ix->key, IRFL_TAB_META);
	FUNC3(FUNC1(IR_EQ, IRT_TAB), mt2, ix->mt);
      } else if (FUNC10(bv) && FUNC8(FUNC11(bv)->metatable) == ix->mtv) {
	TRef mt2 = FUNC3(FUNC0(IR_FLOAD, IRT_TAB), ix->key, IRFL_UDATA_META);
	FUNC3(FUNC1(IR_EQ, IRT_TAB), mt2, ix->mt);
      } else {  /* Lookup metamethod on 2nd operand and compare both. */
	ix->tab = ix->key;
	FUNC2(J->L, &ix->tabv, bv);
	if (!FUNC4(J, ix, mm) ||
	    FUNC5(J, mo1, ix->mobj, &mo1v, &ix->mobjv))
	  goto nomatch;
      }
      FUNC6(J, ix, op);
      return;
    }
#endif
  nomatch:
    /* Lookup failed. Retry with  __lt and swapped operands. */
    if (!(op & 2)) break;  /* Already at __lt. Interpreter will throw. */
    ix->tab = ix->key; ix->key = ix->val; ix->val = ix->tab;
    FUNC2(J->L, &ix->tabv, &ix->keyv);
    FUNC2(J->L, &ix->keyv, &ix->valv);
    FUNC2(J->L, &ix->valv, &ix->tabv);
    op ^= 3;
  }
}