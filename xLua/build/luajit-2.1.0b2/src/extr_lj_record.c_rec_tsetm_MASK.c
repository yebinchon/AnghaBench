#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int flags; TYPE_5__* L; } ;
typedef  TYPE_1__ jit_State ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  cTValue ;
struct TYPE_20__ {int /*<<< orphan*/ * base; } ;
struct TYPE_19__ {int asize; } ;
struct TYPE_18__ {void* val; int /*<<< orphan*/  valv; int /*<<< orphan*/  key; int /*<<< orphan*/  keyv; scalar_t__ idxchain; void* tab; int /*<<< orphan*/  tabv; } ;
typedef  TYPE_2__ RecordIndex ;
typedef  TYPE_3__ GCtab ;
typedef  int BCReg ;

/* Variables and functions */
 int JIT_F_OPT_SINK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,int /*<<< orphan*/ *,TYPE_3__*) ; 
 TYPE_3__* FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(jit_State *J, BCReg ra, BCReg rn, int32_t i)
{
  RecordIndex ix;
  cTValue *basev = J->L->base;
  GCtab *t = FUNC9(&basev[ra-1]);
  FUNC8(J->L, &ix.tabv, t);
  ix.tab = FUNC1(J, ra-1);
  ix.idxchain = 0;
#ifdef LUAJIT_ENABLE_TABLE_BUMP
  if ((J->flags & JIT_F_OPT_SINK)) {
    if (t->asize < i+rn-ra)
      lj_tab_reasize(J->L, t, i+rn-ra);
    setnilV(&ix.keyv);
    rec_idx_bump(J, &ix);
  }
#endif
  for (; ra < rn; i++, ra++) {
    FUNC6(&ix.keyv, i);
    ix.key = FUNC2(J, i);
    FUNC0(J->L, &ix.valv, &basev[ra]);
    ix.val = FUNC1(J, ra);
    FUNC3(J, &ix);
  }
}