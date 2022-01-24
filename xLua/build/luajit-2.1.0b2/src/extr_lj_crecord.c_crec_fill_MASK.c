#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  jit_State ;
struct TYPE_6__ {int /*<<< orphan*/  i; } ;
struct TYPE_5__ {scalar_t__ tp; } ;
typedef  int /*<<< orphan*/  TRef ;
typedef  int /*<<< orphan*/  MSize ;
typedef  int CTSize ;
typedef  TYPE_1__ CRecMemList ;

/* Variables and functions */
 int CREC_FILL_MAXUNROLL ; 
 int CTSIZE_PTR ; 
 TYPE_4__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRCALL_memset ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ IRT_INT ; 
 scalar_t__ IRT_NIL ; 
 scalar_t__ IRT_U16 ; 
 scalar_t__ IRT_U32 ; 
 scalar_t__ IRT_U64 ; 
 scalar_t__ IRT_U8 ; 
 int /*<<< orphan*/  IR_MUL ; 
 int /*<<< orphan*/  IR_XBAR ; 
 scalar_t__ LJ_TARGET_UNALIGNED ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(jit_State *J, TRef trdst, TRef trlen, TRef trfill,
		      CTSize step)
{
  if (FUNC11(trlen)) {  /* Length must be constant. */
    CRecMemList ml[CREC_FILL_MAXUNROLL];
    MSize mlp;
    CTSize len = (CTSize)FUNC0(FUNC12(trlen))->i;
    if (len == 0) return;  /* Shortcut. */
    if (LJ_TARGET_UNALIGNED || step >= CTSIZE_PTR)
      step = CTSIZE_PTR;
    if (step * CREC_FILL_MAXUNROLL < len) goto fallback;
    mlp = FUNC5(ml, len, step);
    if (!mlp) goto fallback;
    if (FUNC11(trfill) || ml[0].tp != IRT_U8)
      trfill = FUNC6(trfill, IRT_INT, IRT_U8, 0);
    if (ml[0].tp != IRT_U8) {  /* Scatter U8 to U16/U32/U64. */
      if (CTSIZE_PTR == 8 && ml[0].tp == IRT_U64) {
	if (FUNC11(trfill))  /* Pointless on x64 with zero-extended regs. */
	  trfill = FUNC6(trfill, IRT_U64, IRT_U32, 0);
	trfill = FUNC7(FUNC1(IR_MUL, IRT_U64), trfill,
			FUNC10(J, FUNC3(01010101,01010101)));
      } else {
	trfill = FUNC7(FUNC2(IR_MUL), trfill,
		   FUNC9(J, ml[0].tp == IRT_U16 ? 0x0101 : 0x01010101));
      }
    }
    FUNC4(J, ml, mlp, trdst, trfill);
  } else {
fallback:
    /* Call memset. Always needs a barrier to disable alias analysis. */
    FUNC8(J, IRCALL_memset, trdst, trfill, trlen);  /* Note: arg order! */
  }
  FUNC7(FUNC1(IR_XBAR, IRT_NIL), 0, 0);
}