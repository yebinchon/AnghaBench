#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  x86Op ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_17__ {int ofs; } ;
struct TYPE_19__ {TYPE_1__ mrm; } ;
struct TYPE_18__ {scalar_t__ r; scalar_t__ o; int /*<<< orphan*/  t; int /*<<< orphan*/  op1; int /*<<< orphan*/  op2; } ;
typedef  int /*<<< orphan*/  RegSet ;
typedef  int /*<<< orphan*/  Reg ;
typedef  TYPE_2__ IRIns ;
typedef  TYPE_3__ ASMState ;

/* Variables and functions */
 int /*<<< orphan*/  FORCE_REX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  IRT_FLOAT 134 
#define  IRT_I16 133 
#define  IRT_I8 132 
#define  IRT_LIGHTUD 131 
#define  IRT_NUM 130 
#define  IRT_U16 129 
#define  IRT_U8 128 
 scalar_t__ IR_FSTORE ; 
 scalar_t__ IR_HIOP ; 
 scalar_t__ LJ_32 ; 
 scalar_t__ LJ_64 ; 
 int /*<<< orphan*/  REX_64 ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RID_MRM ; 
 int /*<<< orphan*/  RID_NONE ; 
 scalar_t__ RID_SINK ; 
 int /*<<< orphan*/  RSET_FPR ; 
 int /*<<< orphan*/  RSET_GPR ; 
 int /*<<< orphan*/  RSET_GPR8 ; 
 int /*<<< orphan*/  XO_MOV ; 
 int /*<<< orphan*/  XO_MOVSDto ; 
 int /*<<< orphan*/  XO_MOVSSto ; 
 int /*<<< orphan*/  XO_MOVmi ; 
 int /*<<< orphan*/  XO_MOVmib ; 
 int /*<<< orphan*/  XO_MOVto ; 
 int /*<<< orphan*/  XO_MOVtob ; 
 int /*<<< orphan*/  XO_MOVtow ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC26(ASMState *as, IRIns *ir)
{
  RegSet allow = RSET_GPR;
  Reg src = RID_NONE, osrc = RID_NONE;
  int32_t k = 0;
  if (ir->r == RID_SINK)
    return;
  /* The IRT_I16/IRT_U16 stores should never be simplified for constant
  ** values since mov word [mem], imm16 has a length-changing prefix.
  */
  if (FUNC12(ir->t) || FUNC15(ir->t) || FUNC11(ir->t) ||
      !FUNC4(as, ir->op2, &k)) {
    RegSet allow8 = FUNC11(ir->t) ? RSET_FPR :
		    (FUNC13(ir->t) || FUNC17(ir->t)) ? RSET_GPR8 : RSET_GPR;
    src = osrc = FUNC20(as, ir->op2, allow8);
    if (!LJ_64 && !FUNC25(allow8, src)) {  /* Already in wrong register. */
      FUNC24(allow, osrc);
      src = FUNC23(as, allow8);
    }
    FUNC24(allow, src);
  }
  if (ir->o == IR_FSTORE) {
    FUNC2(as, FUNC0(ir->op1), allow);
  } else {
    FUNC3(as, ir->op1, allow);
    if (LJ_32 && ir->o == IR_HIOP) as->mrm.ofs += 4;
  }
  if (FUNC21(src)) {
    x86Op xo;
    switch (FUNC18(ir->t)) {
    case IRT_I8: case IRT_U8: xo = XO_MOVtob; src |= FORCE_REX; break;
    case IRT_I16: case IRT_U16: xo = XO_MOVtow; break;
    case IRT_NUM: xo = XO_MOVSDto; break;
    case IRT_FLOAT: xo = XO_MOVSSto; break;
#if LJ_64 && !LJ_GC64
    case IRT_LIGHTUD: lua_assert(0);  /* NYI: mask 64 bit lightuserdata. */
#endif
    default:
      if (LJ_64 && FUNC9(ir->t))
	src |= REX_64;
      else
	FUNC19(FUNC14(ir->t) || FUNC16(ir->t) || FUNC10(ir->t));
      xo = XO_MOVto;
      break;
    }
    FUNC7(as, xo, src, RID_MRM);
    if (!LJ_64 && src != osrc) {
      FUNC22(as, osrc);
      FUNC8(as, XO_MOV, src, osrc);
    }
  } else {
    if (FUNC13(ir->t) || FUNC17(ir->t)) {
      FUNC6(as, k);
      FUNC7(as, XO_MOVmib, 0, RID_MRM);
    } else {
      FUNC19(FUNC9(ir->t) || FUNC14(ir->t) || FUNC16(ir->t) ||
		 FUNC10(ir->t));
      FUNC5(as, k);
      FUNC7(as, XO_MOVmi, FUNC1(ir, 0), RID_MRM);
    }
  }
}