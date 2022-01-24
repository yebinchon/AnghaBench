#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int needsnap; int /*<<< orphan*/ * base; int /*<<< orphan*/  postproc; } ;
typedef  TYPE_1__ jit_State ;
typedef  int int32_t ;
struct TYPE_10__ {scalar_t__ data; scalar_t__ nres; int /*<<< orphan*/ * argv; } ;
typedef  int /*<<< orphan*/  TRef ;
typedef  TYPE_2__ RecordFFData ;
typedef  scalar_t__ IRType ;
typedef  int /*<<< orphan*/  CType ;
typedef  int /*<<< orphan*/  CTState ;
typedef  int CTSize ;
typedef  int CTInfo ;

/* Variables and functions */
 int CTF_BOOL ; 
 int CTF_UNSIGNED ; 
 int /*<<< orphan*/  CTID_BOOL ; 
 int /*<<< orphan*/  CTID_INT32 ; 
 int /*<<< orphan*/  CTID_UINT32 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ IRT_I8 ; 
 scalar_t__ IRT_U32 ; 
 int /*<<< orphan*/  IR_BAND ; 
 int /*<<< orphan*/  IR_BOR ; 
 int /*<<< orphan*/  IR_BSAR ; 
 int /*<<< orphan*/  IR_BSHL ; 
 int /*<<< orphan*/  IR_BSHR ; 
 int /*<<< orphan*/  IR_NE ; 
 int /*<<< orphan*/  IR_XLOAD ; 
 int /*<<< orphan*/  IR_XSTORE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  LJ_POST_FIXGUARD ; 
 int /*<<< orphan*/  TREF_TRUE ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 

__attribute__((used)) static void FUNC15(jit_State *J, RecordFFData *rd, TRef ptr, CTInfo info)
{
  IRType t = IRT_I8 + 2*FUNC11(FUNC6(info)) + ((info&CTF_UNSIGNED)?1:0);
  TRef tr = FUNC10(FUNC0(IR_XLOAD, t), ptr, 0);
  CTSize pos = FUNC7(info), bsz = FUNC5(info), shift = 32 - bsz;
  FUNC14(t <= IRT_U32);  /* NYI: 64 bit bitfields. */
  if (rd->data == 0) {  /* __index metamethod. */
    if ((info & CTF_BOOL)) {
      tr = FUNC10(FUNC2(IR_BAND), tr, FUNC12(J, (int32_t)((1u << pos))));
      /* Assume not equal to zero. Fixup and emit pending guard later. */
      FUNC13(J, FUNC1(IR_NE), tr, FUNC12(J, 0));
      J->postproc = LJ_POST_FIXGUARD;
      tr = TREF_TRUE;
    } else if (!(info & CTF_UNSIGNED)) {
      tr = FUNC10(FUNC2(IR_BSHL), tr, FUNC12(J, shift - pos));
      tr = FUNC10(FUNC2(IR_BSAR), tr, FUNC12(J, shift));
    } else {
      FUNC14(bsz < 32);  /* Full-size fields cannot end up here. */
      tr = FUNC10(FUNC2(IR_BSHR), tr, FUNC12(J, pos));
      tr = FUNC10(FUNC2(IR_BAND), tr, FUNC12(J, (int32_t)((1u << bsz)-1)));
      /* We can omit the U32 to NUM conversion, since bsz < 32. */
    }
    J->base[0] = tr;
  } else {  /* __newindex metamethod. */
    CTState *cts = FUNC8(FUNC3(J));
    CType *ct = FUNC9(cts,
			  (info & CTF_BOOL) ? CTID_BOOL :
			  (info & CTF_UNSIGNED) ? CTID_UINT32 : CTID_INT32);
    int32_t mask = (int32_t)(((1u << bsz)-1) << pos);
    TRef sp = FUNC4(J, ct, 0, J->base[2], &rd->argv[2]);
    sp = FUNC10(FUNC2(IR_BSHL), sp, FUNC12(J, pos));
    /* Use of the target type avoids forwarding conversions. */
    sp = FUNC10(FUNC0(IR_BAND, t), sp, FUNC12(J, mask));
    tr = FUNC10(FUNC0(IR_BAND, t), tr, FUNC12(J, (int32_t)~mask));
    tr = FUNC10(FUNC0(IR_BOR, t), tr, sp);
    FUNC10(FUNC0(IR_XSTORE, t), ptr, tr);
    rd->nres = 0;
    J->needsnap = 1;
  }
}