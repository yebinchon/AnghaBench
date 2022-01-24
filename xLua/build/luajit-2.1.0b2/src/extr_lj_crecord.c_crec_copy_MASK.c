#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_7__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  jit_State ;
struct TYPE_9__ {int /*<<< orphan*/  i; } ;
struct TYPE_8__ {int info; } ;
typedef  int /*<<< orphan*/  TRef ;
typedef  scalar_t__ MSize ;
typedef  size_t IRType ;
typedef  TYPE_1__ CType ;
typedef  int /*<<< orphan*/  CTState ;
typedef  int CTSize ;
typedef  int /*<<< orphan*/  CRecMemList ;

/* Variables and functions */
 int CREC_COPY_MAXLEN ; 
 int CREC_COPY_MAXUNROLL ; 
 int CTF_UNION ; 
 int CTSIZE_PTR ; 
 TYPE_7__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRCALL_memcpy ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t IRT_CDATA ; 
 int /*<<< orphan*/  IRT_NIL ; 
 int /*<<< orphan*/  IR_XBAR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ LJ_TARGET_UNALIGNED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int,int,size_t) ; 
 size_t FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 unsigned int FUNC7 (int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int) ; 
 scalar_t__ FUNC10 (int) ; 
 TYPE_1__* FUNC11 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int* lj_ir_type_size ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC17(jit_State *J, TRef trdst, TRef trsrc, TRef trlen,
		      CType *ct)
{
  if (FUNC15(trlen)) {  /* Length must be constant. */
    CRecMemList ml[CREC_COPY_MAXUNROLL];
    MSize mlp = 0;
    CTSize step = 1, len = (CTSize)FUNC0(FUNC16(trlen))->i;
    IRType tp = IRT_CDATA;
    int needxbar = 0;
    if (len == 0) return;  /* Shortcut. */
    if (len > CREC_COPY_MAXLEN) goto fallback;
    if (ct) {
      CTState *cts = FUNC8(FUNC2(J));
      FUNC14(FUNC9(ct->info) || FUNC10(ct->info));
      if (FUNC9(ct->info)) {
	CType *cct = FUNC11(cts, ct);
	tp = FUNC6(cts, cct);
	if (tp == IRT_CDATA) goto rawcopy;
	step = lj_ir_type_size[tp];
	FUNC14((len & (step-1)) == 0);
      } else if ((ct->info & CTF_UNION)) {
	step = (1u << FUNC7(ct->info));
	goto rawcopy;
      } else {
	mlp = FUNC4(ml, cts, ct);
	goto emitcopy;
      }
    } else {
    rawcopy:
      needxbar = 1;
      if (LJ_TARGET_UNALIGNED || step >= CTSIZE_PTR)
	step = CTSIZE_PTR;
    }
    mlp = FUNC5(ml, len, step, tp);
  emitcopy:
    if (mlp) {
      FUNC3(J, ml, mlp, trdst, trsrc);
      if (needxbar)
	FUNC12(FUNC1(IR_XBAR, IRT_NIL), 0, 0);
      return;
    }
  }
fallback:
  /* Call memcpy. Always needs a barrier to disable alias analysis. */
  FUNC13(J, IRCALL_memcpy, trdst, trsrc, trlen);
  FUNC12(FUNC1(IR_XBAR, IRT_NIL), 0, 0);
}