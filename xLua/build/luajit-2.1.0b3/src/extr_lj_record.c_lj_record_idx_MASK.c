#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_4__ ;
typedef  struct TYPE_29__   TYPE_3__ ;
typedef  struct TYPE_28__   TYPE_2__ ;
typedef  struct TYPE_27__   TYPE_22__ ;
typedef  struct TYPE_26__   TYPE_1__ ;

/* Type definitions */
struct TYPE_26__ {scalar_t__* base; int flags; int needsnap; void* guardemit; TYPE_4__* L; } ;
typedef  TYPE_1__ jit_State ;
typedef  int /*<<< orphan*/  cTValue ;
struct TYPE_30__ {int /*<<< orphan*/ * base; } ;
struct TYPE_29__ {int /*<<< orphan*/  metatable; } ;
struct TYPE_28__ {scalar_t__ tab; scalar_t__ idxchain; scalar_t__ val; scalar_t__ mobj; scalar_t__ key; int /*<<< orphan*/  tabv; int /*<<< orphan*/ * oldv; int /*<<< orphan*/  keyv; int /*<<< orphan*/  mobjv; int /*<<< orphan*/  valv; } ;
struct TYPE_27__ {scalar_t__ o; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  scalar_t__ TRef ;
typedef  TYPE_2__ RecordIndex ;
typedef  void* IRType1 ;
typedef  scalar_t__ IRType ;
typedef  scalar_t__ IRRef ;
typedef  scalar_t__ IROp ;
typedef  int /*<<< orphan*/  GCtab ;
typedef  int BCReg ;

/* Variables and functions */
 TYPE_22__* FUNC0 (scalar_t__) ; 
 scalar_t__ IRCONV_NUM_INT ; 
 scalar_t__ IRDELTA_L2S ; 
 scalar_t__ IRFL_TAB_META ; 
 scalar_t__ IRFL_TAB_NOMM ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ IRT_NIL ; 
 scalar_t__ IRT_PGC ; 
 scalar_t__ IRT_TAB ; 
 scalar_t__ IRT_U8 ; 
 scalar_t__ IR_ALOAD ; 
 scalar_t__ IR_AREF ; 
 int /*<<< orphan*/  IR_CONV ; 
 scalar_t__ IR_EQ ; 
 scalar_t__ IR_FLOAD ; 
 scalar_t__ IR_FREF ; 
 scalar_t__ IR_FSTORE ; 
 scalar_t__ IR_HLOAD ; 
 scalar_t__ IR_HREF ; 
 scalar_t__ IR_KKPTR ; 
 scalar_t__ IR_NE ; 
 scalar_t__ IR_NEWREF ; 
 scalar_t__ IR_TBAR ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int JIT_F_OPT_SINK ; 
 int /*<<< orphan*/  LJ_DUALNUM ; 
 int LJ_FR2 ; 
 int /*<<< orphan*/  LJ_TRERR_IDXLOOP ; 
 int /*<<< orphan*/  LJ_TRERR_NOMM ; 
 int /*<<< orphan*/  LJ_TRERR_STORENN ; 
 int /*<<< orphan*/  MM_index ; 
 int /*<<< orphan*/  MM_newindex ; 
 scalar_t__ TREF_NIL ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC7 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (TYPE_22__*) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lj_cont_nop ; 
 int /*<<< orphan*/  lj_cont_ra ; 
 scalar_t__ FUNC12 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,int,int) ; 
 scalar_t__ FUNC18 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_1__*,TYPE_2__*) ; 
 scalar_t__ FUNC26 (TYPE_1__*,TYPE_2__*,scalar_t__*,void**) ; 
 int FUNC27 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC29 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC30 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC31 (scalar_t__) ; 
 scalar_t__ FUNC32 (scalar_t__) ; 
 scalar_t__ FUNC33 (scalar_t__) ; 
 scalar_t__ FUNC34 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC35 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC36 (scalar_t__) ; 
 scalar_t__ FUNC37 (scalar_t__) ; 
 scalar_t__ FUNC38 (scalar_t__) ; 
 scalar_t__ FUNC39 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC40 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC41 (int /*<<< orphan*/ *) ; 

TRef FUNC42(jit_State *J, RecordIndex *ix)
{
  TRef xref;
  IROp xrefop, loadop;
  IRRef rbref;
  IRType1 rbguard;
  cTValue *oldv;

  while (!FUNC36(ix->tab)) { /* Handle non-table lookup. */
    /* Never call raw lj_record_idx() on non-table. */
    FUNC21(ix->idxchain != 0);
    if (!FUNC18(J, ix, ix->val ? MM_newindex : MM_index))
      FUNC20(J, LJ_TRERR_NOMM);
  handlemm:
    if (FUNC31(ix->mobj)) {  /* Handle metamethod call. */
      BCReg func = FUNC27(J, ix->val ? lj_cont_nop : lj_cont_ra);
      TRef *base = J->base + func + LJ_FR2;
      TValue *tv = J->L->base + func + LJ_FR2;
      base[-LJ_FR2] = ix->mobj; base[1] = ix->tab; base[2] = ix->key;
      FUNC28(J->L, tv-LJ_FR2, FUNC8(&ix->mobjv));
      FUNC6(J->L, tv+1, &ix->tabv);
      FUNC6(J->L, tv+2, &ix->keyv);
      if (ix->val) {
	base[3] = ix->val;
	FUNC6(J->L, tv+3, &ix->valv);
	FUNC17(J, func, 3);  /* mobj(tab, key, val) */
	return 0;
      } else {
	FUNC17(J, func, 2);  /* res = mobj(tab, key) */
	return 0;  /* No result yet. */
      }
    }
    /* Otherwise retry lookup with metaobject. */
    ix->tab = ix->mobj;
    FUNC6(J->L, &ix->tabv, &ix->mobjv);
    if (--ix->idxchain == 0)
      FUNC20(J, LJ_TRERR_IDXLOOP);
  }

  /* First catch nil and NaN keys for tables. */
  if (FUNC40(&ix->keyv) || (FUNC41(&ix->keyv) && FUNC39(&ix->keyv))) {
    if (ix->val)  /* Better fail early. */
      FUNC20(J, LJ_TRERR_STORENN);
    if (FUNC34(ix->key)) {
      if (ix->idxchain && FUNC18(J, ix, MM_index))
	goto handlemm;
      return TREF_NIL;
    }
  }

  /* Record the key lookup. */
  xref = FUNC26(J, ix, &rbref, &rbguard);
  xrefop = FUNC0(FUNC37(xref))->o;
  loadop = xrefop == IR_AREF ? IR_ALOAD : IR_HLOAD;
  /* The lj_meta_tset() inconsistency is gone, but better play safe. */
  oldv = xrefop == IR_KKPTR ? (cTValue *)FUNC9(FUNC0(FUNC37(xref))) : ix->oldv;

  if (ix->val == 0) {  /* Indexed load */
    IRType t = FUNC11(oldv);
    TRef res;
    if (oldv == FUNC23(FUNC4(J))) {
      FUNC7(FUNC2(IR_EQ, IRT_PGC), xref, FUNC13(J, FUNC23(FUNC4(J))));
      res = TREF_NIL;
    } else {
      res = FUNC7(FUNC2(loadop, t), xref, 0);
    }
    if (FUNC37(res) < rbref) {  /* HREFK + load forwarded? */
      FUNC15(J, rbref);  /* Rollback to eliminate hmask guard. */
      J->guardemit = rbguard;
    }
    if (t == IRT_NIL && ix->idxchain && FUNC18(J, ix, MM_index))
      goto handlemm;
    if (FUNC10(t)) res = FUNC5(t);  /* Canonicalize primitives. */
    return res;
  } else {  /* Indexed store. */
    GCtab *mt = FUNC30(FUNC29(&ix->tabv)->metatable);
    int keybarrier = FUNC32(ix->key) && !FUNC35(ix->val);
    if (FUNC37(xref) < rbref) {  /* HREFK forwarded? */
      FUNC15(J, rbref);  /* Rollback to eliminate hmask guard. */
      J->guardemit = rbguard;
    }
    if (FUNC40(oldv)) {  /* Previous value was nil? */
      /* Need to duplicate the hasmm check for the early guards. */
      int hasmm = 0;
      if (ix->idxchain && mt) {
	cTValue *mo = FUNC19(mt, FUNC22(FUNC4(J), MM_newindex));
	hasmm = mo && !FUNC40(mo);
      }
      if (hasmm)
	FUNC7(FUNC2(loadop, IRT_NIL), xref, 0);  /* Guard for nil value. */
      else if (xrefop == IR_HREF)
	FUNC7(FUNC2(oldv == FUNC23(FUNC4(J)) ? IR_EQ : IR_NE, IRT_PGC),
	       xref, FUNC13(J, FUNC23(FUNC4(J))));
      if (ix->idxchain && FUNC18(J, ix, MM_newindex)) {
	FUNC21(hasmm);
	goto handlemm;
      }
      FUNC21(!hasmm);
      if (oldv == FUNC23(FUNC4(J))) {  /* Need to insert a new key. */
	TRef key = ix->key;
	if (FUNC33(key))  /* NEWREF needs a TValue as a key. */
	  key = FUNC7(FUNC3(IR_CONV), key, IRCONV_NUM_INT);
	xref = FUNC7(FUNC1(IR_NEWREF, IRT_PGC), ix->tab, key);
	keybarrier = 0;  /* NEWREF already takes care of the key barrier. */
#ifdef LUAJIT_ENABLE_TABLE_BUMP
	if ((J->flags & JIT_F_OPT_SINK))  /* Avoid a separate flag. */
	  rec_idx_bump(J, ix);
#endif
      }
    } else if (!FUNC16(J, loadop, FUNC37(xref))) {
      /* Cannot derive that the previous value was non-nil, must do checks. */
      if (xrefop == IR_HREF)  /* Guard against store to niltv. */
	FUNC7(FUNC2(IR_NE, IRT_PGC), xref, FUNC13(J, FUNC23(FUNC4(J))));
      if (ix->idxchain) {  /* Metamethod lookup required? */
	/* A check for NULL metatable is cheaper (hoistable) than a load. */
	if (!mt) {
	  TRef mtref = FUNC7(FUNC1(IR_FLOAD, IRT_TAB), ix->tab, IRFL_TAB_META);
	  FUNC7(FUNC2(IR_EQ, IRT_TAB), mtref, FUNC14(J, IRT_TAB));
	} else {
	  IRType t = FUNC11(oldv);
	  FUNC7(FUNC2(loadop, t), xref, 0);  /* Guard for non-nil value. */
	}
      }
    } else {
      keybarrier = 0;  /* Previous non-nil value kept the key alive. */
    }
    /* Convert int to number before storing. */
    if (!LJ_DUALNUM && FUNC33(ix->val))
      ix->val = FUNC7(FUNC3(IR_CONV), ix->val, IRCONV_NUM_INT);
    FUNC7(FUNC1(loadop+IRDELTA_L2S, FUNC38(ix->val)), xref, ix->val);
    if (keybarrier || FUNC32(ix->val))
      FUNC7(FUNC1(IR_TBAR, IRT_NIL), ix->tab, 0);
    /* Invalidate neg. metamethod cache for stores with certain string keys. */
    if (!FUNC24(J, ix->key)) {
      TRef fref = FUNC7(FUNC1(IR_FREF, IRT_PGC), ix->tab, IRFL_TAB_NOMM);
      FUNC7(FUNC1(IR_FSTORE, IRT_U8), fref, FUNC12(J, 0));
    }
    J->needsnap = 1;
    return 0;
  }
}