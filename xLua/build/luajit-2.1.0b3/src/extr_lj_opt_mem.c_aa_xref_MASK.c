#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_8__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int ptrdiff_t ;
typedef  int /*<<< orphan*/  jit_State ;
struct TYPE_18__ {scalar_t__ u64; } ;
struct TYPE_17__ {int irt; } ;
struct TYPE_16__ {scalar_t__ o; TYPE_2__ t; scalar_t__ i; int /*<<< orphan*/  op1; int /*<<< orphan*/  op2; } ;
typedef  TYPE_1__ IRIns ;
typedef  int /*<<< orphan*/  AliasRet ;

/* Variables and functions */
 int /*<<< orphan*/  ALIAS_MAY ; 
 int /*<<< orphan*/  ALIAS_MUST ; 
 int /*<<< orphan*/  ALIAS_NO ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int IRT_I8 ; 
 int /*<<< orphan*/  IRT_U64 ; 
 scalar_t__ IR_ADD ; 
 scalar_t__ IR_KINT64 ; 
 scalar_t__ IR_KPTR ; 
 scalar_t__ LJ_64 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*) ; 
 TYPE_8__* FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_2__) ; 
 scalar_t__ FUNC6 (TYPE_2__,TYPE_2__) ; 
 int FUNC7 (TYPE_2__) ; 
 scalar_t__ FUNC8 (TYPE_2__,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static AliasRet FUNC9(jit_State *J, IRIns *refa, IRIns *xa, IRIns *xb)
{
  ptrdiff_t ofsa = 0, ofsb = 0;
  IRIns *refb = FUNC0(xb->op1);
  IRIns *basea = refa, *baseb = refb;
  if (refa == refb && FUNC6(xa->t, xb->t))
    return ALIAS_MUST;  /* Shortcut for same refs with identical type. */
  /* Offset-based disambiguation. */
  if (refa->o == IR_ADD && FUNC4(refa->op2)) {
    IRIns *irk = FUNC0(refa->op2);
    basea = FUNC0(refa->op1);
    ofsa = (LJ_64 && irk->o == IR_KINT64) ? (ptrdiff_t)FUNC2(irk)->u64 :
					    (ptrdiff_t)irk->i;
  }
  if (refb->o == IR_ADD && FUNC4(refb->op2)) {
    IRIns *irk = FUNC0(refb->op2);
    baseb = FUNC0(refb->op1);
    ofsb = (LJ_64 && irk->o == IR_KINT64) ? (ptrdiff_t)FUNC2(irk)->u64 :
					    (ptrdiff_t)irk->i;
  }
  /* Treat constified pointers like base vs. base+offset. */
  if (basea->o == IR_KPTR && baseb->o == IR_KPTR) {
    ofsb += (char *)FUNC3(baseb) - (char *)FUNC3(basea);
    baseb = basea;
  }
  /* This implements (very) strict aliasing rules.
  ** Different types do NOT alias, except for differences in signedness.
  ** Type punning through unions is allowed (but forces a reload).
  */
  if (basea == baseb) {
    ptrdiff_t sza = FUNC7(xa->t), szb = FUNC7(xb->t);
    if (ofsa == ofsb) {
      if (sza == szb && FUNC5(xa->t) == FUNC5(xb->t))
	return ALIAS_MUST;  /* Same-sized, same-kind. May need to convert. */
    } else if (ofsa + sza <= ofsb || ofsb + szb <= ofsa) {
      return ALIAS_NO;  /* Non-overlapping base+-o1 vs. base+-o2. */
    }
    /* NYI: extract, extend or reinterpret bits (int <-> fp). */
    return ALIAS_MAY;  /* Overlapping or type punning: force reload. */
  }
  if (!FUNC6(xa->t, xb->t) &&
      !(FUNC8(xa->t, IRT_I8, IRT_U64) &&
	((xa->t.irt - IRT_I8) ^ (xb->t.irt - IRT_I8)) == 1))
    return ALIAS_NO;
  /* NYI: structural disambiguation. */
  return FUNC1(J, basea, baseb);  /* Try to disambiguate allocations. */
}