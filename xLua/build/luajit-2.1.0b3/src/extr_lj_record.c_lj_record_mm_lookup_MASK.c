#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;
typedef  struct TYPE_20__   TYPE_18__ ;

/* Type definitions */
struct TYPE_21__ {int /*<<< orphan*/  L; } ;
typedef  TYPE_1__ jit_State ;
typedef  int /*<<< orphan*/  cTValue ;
struct TYPE_24__ {int /*<<< orphan*/  metatable; } ;
struct TYPE_23__ {int udtype; int /*<<< orphan*/  metatable; } ;
struct TYPE_22__ {void* tab; void* mt; int /*<<< orphan*/  mobj; scalar_t__ idxchain; scalar_t__ val; int /*<<< orphan*/  key; int /*<<< orphan*/  keyv; int /*<<< orphan*/  tabv; int /*<<< orphan*/ * mtv; int /*<<< orphan*/  mobjv; } ;
struct TYPE_20__ {int /*<<< orphan*/ * gcroot; } ;
typedef  void* TRef ;
typedef  TYPE_2__ RecordIndex ;
typedef  int /*<<< orphan*/  MMS ;
typedef  int /*<<< orphan*/  GCtab ;
typedef  int /*<<< orphan*/  GCstr ;

/* Variables and functions */
 size_t GCROOT_BASEMT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRFL_TAB_META ; 
 int /*<<< orphan*/  IRFL_UDATA_META ; 
 int /*<<< orphan*/  IRFL_UDATA_UDTYPE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRT_FUNC ; 
 int /*<<< orphan*/  IRT_PGC ; 
 int /*<<< orphan*/  IRT_TAB ; 
 int /*<<< orphan*/  IRT_U8 ; 
 int /*<<< orphan*/  IR_EQ ; 
 int /*<<< orphan*/  IR_FLOAD ; 
 int /*<<< orphan*/  IR_NE ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ LJ_HASFFI ; 
 int /*<<< orphan*/  LJ_TRERR_BADTYPE ; 
 void* TREF_NIL ; 
 int UDTYPE_FFI_CLIB ; 
 int UDTYPE_USERDATA ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC7 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 TYPE_18__ g ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 size_t FUNC9 (int /*<<< orphan*/ *) ; 
 void* FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 void* FUNC16 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC24 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC25 (void*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC27 (void*) ; 
 scalar_t__ FUNC28 (void*) ; 
 scalar_t__ FUNC29 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC30 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC31 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC32 (int /*<<< orphan*/ *) ; 

int FUNC33(jit_State *J, RecordIndex *ix, MMS mm)
{
  RecordIndex mix;
  GCtab *mt;
  if (FUNC27(ix->tab)) {
    mt = FUNC24(FUNC23(&ix->tabv)->metatable);
    mix.tab = FUNC7(FUNC1(IR_FLOAD, IRT_TAB), ix->tab, IRFL_TAB_META);
  } else if (FUNC28(ix->tab)) {
    int udtype = FUNC32(&ix->tabv)->udtype;
    mt = FUNC24(FUNC32(&ix->tabv)->metatable);
    /* The metatables of special userdata objects are treated as immutable. */
    if (udtype != UDTYPE_USERDATA) {
      cTValue *mo;
      if (LJ_HASFFI && udtype == UDTYPE_FFI_CLIB) {
	/* Specialize to the C library namespace object. */
	FUNC7(FUNC2(IR_EQ, IRT_PGC), ix->tab, FUNC14(J, FUNC32(&ix->tabv)));
      } else {
	/* Specialize to the type of userdata. */
	TRef tr = FUNC7(FUNC1(IR_FLOAD, IRT_U8), ix->tab, IRFL_UDATA_UDTYPE);
	FUNC7(FUNC3(IR_EQ), tr, FUNC12(J, udtype));
      }
  immutable_mt:
      mo = FUNC18(mt, FUNC20(FUNC4(J), mm));
      if (!mo || FUNC30(mo))
	return 0;  /* No metamethod. */
      /* Treat metamethod or index table as immutable, too. */
      if (!(FUNC29(mo) || FUNC31(mo)))
	FUNC19(J, LJ_TRERR_BADTYPE);
      FUNC6(J->L, &ix->mobjv, mo);
      ix->mobj = FUNC11(J, FUNC8(mo), FUNC29(mo) ? IRT_FUNC : IRT_TAB);
      ix->mtv = mt;
      ix->mt = TREF_NIL;  /* Dummy value for comparison semantics. */
      return 1;  /* Got metamethod or index table. */
    }
    mix.tab = FUNC7(FUNC1(IR_FLOAD, IRT_TAB), ix->tab, IRFL_UDATA_META);
  } else {
    /* Specialize to base metatable. Must flush mcode in lua_setmetatable(). */
    mt = FUNC24(FUNC5(FUNC4(J), &ix->tabv));
    if (mt == NULL) {
      ix->mt = TREF_NIL;
      return 0;  /* No metamethod. */
    }
    /* The cdata metatable is treated as immutable. */
    if (LJ_HASFFI && FUNC25(ix->tab)) goto immutable_mt;
#if LJ_GC64
    /* TODO: fix ARM32 asm_fload(), so we can use this for all archs. */
    ix->mt = mix.tab = lj_ir_ggfload(J, IRT_TAB,
      GG_OFS(g.gcroot[GCROOT_BASEMT+itypemap(&ix->tabv)]));
#else
    ix->mt = mix.tab = FUNC16(J, mt);
#endif
    goto nocheck;
  }
  ix->mt = mt ? mix.tab : TREF_NIL;
  FUNC7(FUNC2(mt ? IR_NE : IR_EQ, IRT_TAB), mix.tab, FUNC13(J, IRT_TAB));
nocheck:
  if (mt) {
    GCstr *mmstr = FUNC20(FUNC4(J), mm);
    cTValue *mo = FUNC18(mt, mmstr);
    if (mo && !FUNC30(mo))
      FUNC6(J->L, &ix->mobjv, mo);
    ix->mtv = mt;
    FUNC22(J->L, &mix.tabv, mt);
    FUNC21(J->L, &mix.keyv, mmstr);
    mix.key = FUNC15(J, mmstr);
    mix.val = 0;
    mix.idxchain = 0;
    ix->mobj = FUNC17(J, &mix);
    return !FUNC26(ix->mobj);  /* 1 if metamethod found, 0 if not. */
  }
  return 0;  /* No metamethod. */
}