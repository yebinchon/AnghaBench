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
typedef  struct TYPE_27__   TYPE_1__ ;

/* Type definitions */
struct TYPE_27__ {void** base; } ;
typedef  TYPE_1__ jit_State ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  cTValue ;
struct TYPE_30__ {int info; int size; int sib; int /*<<< orphan*/  name; } ;
struct TYPE_29__ {TYPE_2__* argv; } ;
struct TYPE_28__ {scalar_t__ u64; } ;
typedef  TYPE_2__ TValue ;
typedef  void* TRef ;
typedef  TYPE_3__ RecordFFData ;
typedef  size_t MSize ;
typedef  int /*<<< orphan*/  GCcdata ;
typedef  int CTypeID ;
typedef  TYPE_4__ CType ;
typedef  int /*<<< orphan*/  CTState ;
typedef  int CTSize ;
typedef  int CTInfo ;

/* Variables and functions */
 int CREC_FILL_MAXUNROLL ; 
 int CTF_VLA ; 
 int CTID_INT32 ; 
 scalar_t__ CT_MEMALIGN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRT_CDATA ; 
 int /*<<< orphan*/  IRT_PTR ; 
 int /*<<< orphan*/  IR_ADD ; 
 int /*<<< orphan*/  IR_ADDOV ; 
 int /*<<< orphan*/  IR_CNEW ; 
 int /*<<< orphan*/  IR_CNEWI ; 
 int /*<<< orphan*/  IR_MULOV ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  LJ_TRERR_NYICONV ; 
 int /*<<< orphan*/  MM_gc ; 
 void* TREF_NIL ; 
 void* FUNC4 (TYPE_1__*,TYPE_4__*,void*,void*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,void*,void*,void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC9 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 scalar_t__ FUNC12 (int) ; 
 scalar_t__ FUNC13 (int) ; 
 scalar_t__ FUNC14 (int) ; 
 scalar_t__ FUNC15 (int) ; 
 scalar_t__ FUNC16 (int) ; 
 scalar_t__ FUNC17 (int) ; 
 TYPE_4__* FUNC18 (int /*<<< orphan*/ *,int) ; 
 TYPE_4__* FUNC19 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 void* FUNC20 (int /*<<< orphan*/ ,void*,void*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,TYPE_4__*,TYPE_2__*) ; 
 int FUNC23 (int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/ * FUNC24 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC25 (int /*<<< orphan*/ *,TYPE_4__*,int) ; 
 void* FUNC26 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 void* FUNC28 (TYPE_1__*,int) ; 
 void* FUNC29 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 void* FUNC30 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC33(jit_State *J, RecordFFData *rd, CTypeID id)
{
  CTState *cts = FUNC8(FUNC3(J));
  CTSize sz;
  CTInfo info = FUNC23(cts, id, &sz);
  CType *d = FUNC18(cts, id);
  TRef trcd, trid = FUNC26(J, id);
  cTValue *fin;
  /* Use special instruction to box pointer or 32/64 bit integer. */
  if (FUNC16(info) || (FUNC14(info) && (sz == 4 || sz == 8))) {
    TRef sp = J->base[1] ? FUNC4(J, d, 0, J->base[1], &rd->argv[1]) :
	      FUNC16(info) ? FUNC29(J, NULL) :
	      sz == 4 ? FUNC26(J, 0) :
	      (FUNC30(J), FUNC27(J, 0));
    J->base[0] = FUNC20(FUNC1(IR_CNEWI, IRT_CDATA), trid, sp);
    return;
  } else {
    TRef trsz = TREF_NIL;
    if ((info & CTF_VLA)) {  /* Calculate VLA/VLS size at runtime. */
      CTSize sz0, sz1;
      if (!J->base[1] || J->base[2])
	FUNC31(J, LJ_TRERR_NYICONV);  /* NYI: init VLA/VLS. */
      trsz = FUNC4(J, FUNC9(cts, CTID_INT32), 0,
			J->base[1], &rd->argv[1]);
      sz0 = FUNC25(cts, d, 0);
      sz1 = FUNC25(cts, d, 1);
      trsz = FUNC20(FUNC2(IR_MULOV), trsz, FUNC26(J, (int32_t)(sz1-sz0)));
      trsz = FUNC20(FUNC2(IR_ADDOV), trsz, FUNC26(J, (int32_t)sz0));
      J->base[1] = 0;  /* Simplify logic below. */
    } else if (FUNC7(info) > CT_MEMALIGN) {
      trsz = FUNC26(J, sz);
    }
    trcd = FUNC20(FUNC1(IR_CNEW, IRT_CDATA), trid, trsz);
    if (sz > 128 || (info & CTF_VLA)) {
      TRef dp;
      CTSize align;
    special:  /* Only handle bulk zero-fill for large/VLA/VLS types. */
      if (J->base[1])
	FUNC31(J, LJ_TRERR_NYICONV);  /* NYI: init large/VLA/VLS types. */
      dp = FUNC20(FUNC0(IR_ADD, IRT_PTR), trcd, FUNC28(J, sizeof(GCcdata)));
      if (trsz == TREF_NIL) trsz = FUNC26(J, sz);
      align = FUNC7(info);
      if (align < CT_MEMALIGN) align = CT_MEMALIGN;
      FUNC5(J, dp, trsz, FUNC26(J, 0), (1u << align));
    } else if (J->base[1] && !J->base[2] &&
	!FUNC22(cts, d, &rd->argv[1])) {
      goto single_init;
    } else if (FUNC10(d->info)) {
      CType *dc = FUNC19(cts, d);  /* Array element type. */
      CTSize ofs, esize = dc->size;
      TRef sp = 0;
      TValue tv;
      TValue *sval = &tv;
      MSize i;
      tv.u64 = 0;
      if (!(FUNC15(dc->info) || FUNC16(dc->info)) ||
	  esize * CREC_FILL_MAXUNROLL < sz)
	goto special;
      for (i = 1, ofs = 0; ofs < sz; ofs += esize) {
	TRef dp = FUNC20(FUNC0(IR_ADD, IRT_PTR), trcd,
			 FUNC28(J, ofs + sizeof(GCcdata)));
	if (J->base[i]) {
	  sp = J->base[i];
	  sval = &rd->argv[i];
	  i++;
	} else if (i != 2) {
	  sp = FUNC15(dc->info) ? FUNC26(J, 0) : TREF_NIL;
	}
	FUNC4(J, dc, dp, sp, sval);
      }
    } else if (FUNC17(d->info)) {
      CTypeID fid = d->sib;
      MSize i = 1;
      while (fid) {
	CType *df = FUNC9(cts, fid);
	fid = df->sib;
	if (FUNC13(df->info)) {
	  CType *dc;
	  TRef sp, dp;
	  TValue tv;
	  TValue *sval = &tv;
	  FUNC32(&tv, 0);
	  if (!FUNC21(df->name)) continue;  /* Ignore unnamed fields. */
	  dc = FUNC19(cts, df);  /* Field type. */
	  if (!(FUNC15(dc->info) || FUNC16(dc->info) ||
		FUNC12(dc->info)))
	    FUNC31(J, LJ_TRERR_NYICONV);  /* NYI: init aggregates. */
	  if (J->base[i]) {
	    sp = J->base[i];
	    sval = &rd->argv[i];
	    i++;
	  } else {
	    sp = FUNC16(dc->info) ? TREF_NIL : FUNC26(J, 0);
	  }
	  dp = FUNC20(FUNC0(IR_ADD, IRT_PTR), trcd,
		      FUNC28(J, df->size + sizeof(GCcdata)));
	  FUNC4(J, dc, dp, sp, sval);
	} else if (!FUNC11(df->info)) {
	  /* NYI: init bitfields and sub-structures. */
	  FUNC31(J, LJ_TRERR_NYICONV);
	}
      }
    } else {
      TRef dp;
    single_init:
      dp = FUNC20(FUNC0(IR_ADD, IRT_PTR), trcd, FUNC28(J, sizeof(GCcdata)));
      if (J->base[1]) {
	FUNC4(J, d, dp, J->base[1], &rd->argv[1]);
      } else {
	TValue tv;
	tv.u64 = 0;
	FUNC4(J, d, dp, FUNC26(J, 0), &tv);
      }
    }
  }
  J->base[0] = trcd;
  /* Handle __gc metamethod. */
  fin = FUNC24(cts, id, MM_gc);
  if (fin)
    FUNC6(J, trcd, 0, fin);
}