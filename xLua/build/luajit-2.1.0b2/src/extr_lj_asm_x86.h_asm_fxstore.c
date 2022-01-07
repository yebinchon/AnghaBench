
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int x86Op ;
typedef int int32_t ;
struct TYPE_17__ {int ofs; } ;
struct TYPE_19__ {TYPE_1__ mrm; } ;
struct TYPE_18__ {scalar_t__ r; scalar_t__ o; int t; int op1; int op2; } ;
typedef int RegSet ;
typedef int Reg ;
typedef TYPE_2__ IRIns ;
typedef TYPE_3__ ASMState ;


 int FORCE_REX ;
 int IR (int ) ;







 scalar_t__ IR_FSTORE ;
 scalar_t__ IR_HIOP ;
 scalar_t__ LJ_32 ;
 scalar_t__ LJ_64 ;
 int REX_64 ;
 int REX_64IR (TYPE_2__*,int ) ;
 int RID_MRM ;
 int RID_NONE ;
 scalar_t__ RID_SINK ;
 int RSET_FPR ;
 int RSET_GPR ;
 int RSET_GPR8 ;
 int XO_MOV ;
 int XO_MOVSDto ;
 int XO_MOVSSto ;
 int XO_MOVmi ;
 int XO_MOVmib ;
 int XO_MOVto ;
 int XO_MOVtob ;
 int XO_MOVtow ;
 int asm_fusefref (TYPE_3__*,int ,int ) ;
 int asm_fusexref (TYPE_3__*,int ,int ) ;
 int asm_isk32 (TYPE_3__*,int ,int *) ;
 int emit_i32 (TYPE_3__*,int ) ;
 int emit_i8 (TYPE_3__*,int ) ;
 int emit_mrm (TYPE_3__*,int ,int ,int ) ;
 int emit_rr (TYPE_3__*,int ,int ,int ) ;
 scalar_t__ irt_is64 (int ) ;
 scalar_t__ irt_isaddr (int ) ;
 scalar_t__ irt_isfp (int ) ;
 scalar_t__ irt_isi16 (int ) ;
 scalar_t__ irt_isi8 (int ) ;
 scalar_t__ irt_isint (int ) ;
 scalar_t__ irt_isu16 (int ) ;
 scalar_t__ irt_isu32 (int ) ;
 scalar_t__ irt_isu8 (int ) ;
 int irt_type (int ) ;
 int lua_assert (int) ;
 int ra_alloc1 (TYPE_3__*,int ,int ) ;
 scalar_t__ ra_hasreg (int ) ;
 int ra_noweak (TYPE_3__*,int ) ;
 int ra_scratch (TYPE_3__*,int ) ;
 int rset_clear (int ,int ) ;
 int rset_test (int ,int ) ;

__attribute__((used)) static void asm_fxstore(ASMState *as, IRIns *ir)
{
  RegSet allow = RSET_GPR;
  Reg src = RID_NONE, osrc = RID_NONE;
  int32_t k = 0;
  if (ir->r == RID_SINK)
    return;



  if (irt_isi16(ir->t) || irt_isu16(ir->t) || irt_isfp(ir->t) ||
      !asm_isk32(as, ir->op2, &k)) {
    RegSet allow8 = irt_isfp(ir->t) ? RSET_FPR :
      (irt_isi8(ir->t) || irt_isu8(ir->t)) ? RSET_GPR8 : RSET_GPR;
    src = osrc = ra_alloc1(as, ir->op2, allow8);
    if (!LJ_64 && !rset_test(allow8, src)) {
      rset_clear(allow, osrc);
      src = ra_scratch(as, allow8);
    }
    rset_clear(allow, src);
  }
  if (ir->o == IR_FSTORE) {
    asm_fusefref(as, IR(ir->op1), allow);
  } else {
    asm_fusexref(as, ir->op1, allow);
    if (LJ_32 && ir->o == IR_HIOP) as->mrm.ofs += 4;
  }
  if (ra_hasreg(src)) {
    x86Op xo;
    switch (irt_type(ir->t)) {
    case 132: case 128: xo = XO_MOVtob; src |= FORCE_REX; break;
    case 133: case 129: xo = XO_MOVtow; break;
    case 130: xo = XO_MOVSDto; break;
    case 134: xo = XO_MOVSSto; break;



    default:
      if (LJ_64 && irt_is64(ir->t))
 src |= REX_64;
      else
 lua_assert(irt_isint(ir->t) || irt_isu32(ir->t) || irt_isaddr(ir->t));
      xo = XO_MOVto;
      break;
    }
    emit_mrm(as, xo, src, RID_MRM);
    if (!LJ_64 && src != osrc) {
      ra_noweak(as, osrc);
      emit_rr(as, XO_MOV, src, osrc);
    }
  } else {
    if (irt_isi8(ir->t) || irt_isu8(ir->t)) {
      emit_i8(as, k);
      emit_mrm(as, XO_MOVmib, 0, RID_MRM);
    } else {
      lua_assert(irt_is64(ir->t) || irt_isint(ir->t) || irt_isu32(ir->t) ||
   irt_isaddr(ir->t));
      emit_i32(as, k);
      emit_mrm(as, XO_MOVmi, REX_64IR(ir, 0), RID_MRM);
    }
  }
}
