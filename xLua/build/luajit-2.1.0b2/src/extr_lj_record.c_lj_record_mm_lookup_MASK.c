#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  L; } ;
typedef  TYPE_1__ jit_State ;
typedef  int /*<<< orphan*/  cTValue ;
struct TYPE_21__ {int /*<<< orphan*/  metatable; } ;
struct TYPE_20__ {int udtype; int /*<<< orphan*/  metatable; } ;
struct TYPE_19__ {void* tab; void* mt; int /*<<< orphan*/  mobj; scalar_t__ idxchain; scalar_t__ val; int /*<<< orphan*/  key; int /*<<< orphan*/  keyv; int /*<<< orphan*/  tabv; int /*<<< orphan*/ * mtv; int /*<<< orphan*/  mobjv; } ;
typedef  void* TRef ;
typedef  TYPE_2__ RecordIndex ;
typedef  int /*<<< orphan*/  MMS ;
typedef  int /*<<< orphan*/  GCtab ;
typedef  int /*<<< orphan*/  GCstr ;

/* Variables and functions */
 int /*<<< orphan*/  IRFL_TAB_META ; 
 int /*<<< orphan*/  IRFL_UDATA_META ; 
 int /*<<< orphan*/  IRFL_UDATA_UDTYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRT_FUNC ; 
 int /*<<< orphan*/  IRT_P32 ; 
 int /*<<< orphan*/  IRT_TAB ; 
 int /*<<< orphan*/  IRT_U8 ; 
 int /*<<< orphan*/  IR_EQ ; 
 int /*<<< orphan*/  IR_FLOAD ; 
 int /*<<< orphan*/  IR_NE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ LJ_HASFFI ; 
 int /*<<< orphan*/  LJ_TRERR_BADTYPE ; 
 void* TREF_NIL ; 
 int UDTYPE_FFI_CLIB ; 
 int UDTYPE_USERDATA ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC6 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 void* FUNC13 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC21 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (void*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (void*) ; 
 scalar_t__ FUNC25 (void*) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC27 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC28 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC29 (int /*<<< orphan*/ *) ; 

int FUNC30(jit_State *J, RecordIndex *ix, MMS mm)
{
  RecordIndex mix;
  GCtab *mt;
  if (FUNC24(ix->tab)) {
    mt = FUNC21(FUNC20(&ix->tabv)->metatable);
    mix.tab = FUNC6(FUNC0(IR_FLOAD, IRT_TAB), ix->tab, IRFL_TAB_META);
  } else if (FUNC25(ix->tab)) {
    int udtype = FUNC29(&ix->tabv)->udtype;
    mt = FUNC21(FUNC29(&ix->tabv)->metatable);
    /* The metatables of special userdata objects are treated as immutable. */
    if (udtype != UDTYPE_USERDATA) {
      cTValue *mo;
      if (LJ_HASFFI && udtype == UDTYPE_FFI_CLIB) {
	/* Specialize to the C library namespace object. */
	FUNC6(FUNC1(IR_EQ, IRT_P32), ix->tab, FUNC11(J, FUNC29(&ix->tabv)));
      } else {
	/* Specialize to the type of userdata. */
	TRef tr = FUNC6(FUNC0(IR_FLOAD, IRT_U8), ix->tab, IRFL_UDATA_UDTYPE);
	FUNC6(FUNC2(IR_EQ), tr, FUNC9(J, udtype));
      }
  immutable_mt:
      mo = FUNC15(mt, FUNC17(FUNC3(J), mm));
      if (!mo || FUNC27(mo))
	return 0;  /* No metamethod. */
      /* Treat metamethod or index table as immutable, too. */
      if (!(FUNC26(mo) || FUNC28(mo)))
	FUNC16(J, LJ_TRERR_BADTYPE);
      FUNC5(J->L, &ix->mobjv, mo);
      ix->mobj = FUNC8(J, FUNC7(mo), FUNC26(mo) ? IRT_FUNC : IRT_TAB);
      ix->mtv = mt;
      ix->mt = TREF_NIL;  /* Dummy value for comparison semantics. */
      return 1;  /* Got metamethod or index table. */
    }
    mix.tab = FUNC6(FUNC0(IR_FLOAD, IRT_TAB), ix->tab, IRFL_UDATA_META);
  } else {
    /* Specialize to base metatable. Must flush mcode in lua_setmetatable(). */
    mt = FUNC21(FUNC4(FUNC3(J), &ix->tabv));
    if (mt == NULL) {
      ix->mt = TREF_NIL;
      return 0;  /* No metamethod. */
    }
    /* The cdata metatable is treated as immutable. */
    if (LJ_HASFFI && FUNC22(ix->tab)) goto immutable_mt;
    ix->mt = mix.tab = FUNC13(J, mt);
    goto nocheck;
  }
  ix->mt = mt ? mix.tab : TREF_NIL;
  FUNC6(FUNC1(mt ? IR_NE : IR_EQ, IRT_TAB), mix.tab, FUNC10(J, IRT_TAB));
nocheck:
  if (mt) {
    GCstr *mmstr = FUNC17(FUNC3(J), mm);
    cTValue *mo = FUNC15(mt, mmstr);
    if (mo && !FUNC27(mo))
      FUNC5(J->L, &ix->mobjv, mo);
    ix->mtv = mt;
    FUNC19(J->L, &mix.tabv, mt);
    FUNC18(J->L, &mix.keyv, mmstr);
    mix.key = FUNC12(J, mmstr);
    mix.val = 0;
    mix.idxchain = 0;
    ix->mobj = FUNC14(J, &mix);
    return !FUNC23(ix->mobj);  /* 1 if metamethod found, 0 if not. */
  }
  return 0;  /* No metamethod. */
}