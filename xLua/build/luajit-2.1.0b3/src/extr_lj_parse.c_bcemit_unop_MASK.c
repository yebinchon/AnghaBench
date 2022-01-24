#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_39__   TYPE_6__ ;
typedef  struct TYPE_38__   TYPE_5__ ;
typedef  struct TYPE_37__   TYPE_4__ ;
typedef  struct TYPE_36__   TYPE_3__ ;
typedef  struct TYPE_35__   TYPE_2__ ;
typedef  struct TYPE_34__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_Number ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  scalar_t__ int32_t ;
struct TYPE_34__ {scalar_t__ info; } ;
struct TYPE_35__ {TYPE_1__ s; int /*<<< orphan*/  nval; } ;
struct TYPE_39__ {scalar_t__ k; TYPE_2__ u; int /*<<< orphan*/  t; int /*<<< orphan*/  f; } ;
struct TYPE_38__ {scalar_t__ freereg; } ;
struct TYPE_37__ {scalar_t__ ctypeid; } ;
struct TYPE_36__ {scalar_t__ u64; } ;
typedef  TYPE_3__ TValue ;
typedef  TYPE_4__ GCcdata ;
typedef  TYPE_5__ FuncState ;
typedef  TYPE_6__ ExpDesc ;
typedef  int /*<<< orphan*/  BCPos ;
typedef  scalar_t__ BCOp ;

/* Variables and functions */
 scalar_t__ BC_LEN ; 
 scalar_t__ BC_NOT ; 
 scalar_t__ BC_UNM ; 
 scalar_t__ CTID_COMPLEX_DOUBLE ; 
 scalar_t__ LJ_HASFFI ; 
 scalar_t__ FUNC0 (int,int) ; 
 scalar_t__ VJMP ; 
 scalar_t__ VKCDATA ; 
 scalar_t__ VKFALSE ; 
 scalar_t__ VKNIL ; 
 scalar_t__ VKTRUE ; 
 scalar_t__ VNONRELOC ; 
 scalar_t__ VRELOCABLE ; 
 scalar_t__ FUNC1 (TYPE_5__*,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int) ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*) ; 
 scalar_t__ FUNC9 (TYPE_6__*) ; 
 scalar_t__ FUNC10 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*) ; 
 TYPE_3__* FUNC12 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*,TYPE_6__*) ; 
 scalar_t__ FUNC14 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_5__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC22(FuncState *fs, BCOp op, ExpDesc *e)
{
  if (op == BC_NOT) {
    /* Swap true and false lists. */
    { BCPos temp = e->f; e->f = e->t; e->t = temp; }
    FUNC16(fs, e->f);
    FUNC16(fs, e->t);
    FUNC6(fs, e);
    if (e->k == VKNIL || e->k == VKFALSE) {
      e->k = VKTRUE;
      return;
    } else if (FUNC9(e) || (LJ_HASFFI && e->k == VKCDATA)) {
      e->k = VKFALSE;
      return;
    } else if (e->k == VJMP) {
      FUNC15(fs, e);
      return;
    } else if (e->k == VRELOCABLE) {
      FUNC3(fs, 1);
      FUNC18(FUNC2(fs, e), fs->freereg-1);
      e->u.s.info = fs->freereg-1;
      e->k = VNONRELOC;
    } else {
      FUNC17(e->k == VNONRELOC);
    }
  } else {
    FUNC17(op == BC_UNM || op == BC_LEN);
    if (op == BC_UNM && !FUNC8(e)) {  /* Constant-fold negations. */
#if LJ_HASFFI
      if (e->k == VKCDATA) {  /* Fold in-place since cdata is not interned. */
	GCcdata *cd = cdataV(&e->u.nval);
	int64_t *p = (int64_t *)cdataptr(cd);
	if (cd->ctypeid == CTID_COMPLEX_DOUBLE)
	  p[1] ^= (int64_t)U64x(80000000,00000000);
	else
	  *p = -*p;
	return;
      } else
#endif
      if (FUNC10(e) && !FUNC11(e)) {  /* Avoid folding to -0. */
	TValue *o = FUNC12(e);
	if (FUNC21(o)) {
	  int32_t k = FUNC14(o);
	  if (k == -k)
	    FUNC20(o, -(lua_Number)k);
	  else
	    FUNC19(o, -k);
	  return;
	} else {
	  o->u64 ^= FUNC0(80000000,00000000);
	  return;
	}
      }
    }
    FUNC13(fs, e);
  }
  FUNC7(fs, e);
  e->u.s.info = FUNC1(fs, op, 0, e->u.s.info);
  e->k = VRELOCABLE;
}