
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_21__ ;
typedef struct TYPE_22__ TYPE_1__ ;


typedef int x86Op ;
typedef int int32_t ;
typedef int cTValue ;
struct TYPE_25__ {TYPE_1__* J; } ;
struct TYPE_24__ {int op2; int t; int op1; } ;
struct TYPE_23__ {int r; } ;
struct TYPE_22__ {int * k32; int * k64; } ;
typedef int RegSet ;
typedef int Reg ;
typedef int MCLabel ;
typedef scalar_t__ IRType ;
typedef int IRRef ;
typedef TYPE_2__ IRIns ;
typedef TYPE_3__ ASMState ;


 int CC_NS ;
 int FORCE_REX ;
 TYPE_21__* IR (int ) ;
 int IRCONV_SEXT ;
 int IRCONV_SRCMASK ;
 scalar_t__ IRT_FLOAT ;
 scalar_t__ IRT_I16 ;
 scalar_t__ IRT_I64 ;
 scalar_t__ IRT_I8 ;
 scalar_t__ IRT_NUM ;
 scalar_t__ IRT_P64 ;
 scalar_t__ IRT_U16 ;
 scalar_t__ IRT_U32 ;
 scalar_t__ IRT_U64 ;
 scalar_t__ IRT_U8 ;
 scalar_t__ LJ_32 ;
 scalar_t__ LJ_64 ;
 size_t LJ_K32_M2P64_31 ;
 size_t LJ_K64_2P64 ;
 size_t LJ_K64_M2P64_31 ;
 size_t LJ_K64_TOBIT ;
 int REX_64 ;
 int RID_MRM ;
 int RSET_FPR ;
 int RSET_GPR ;
 int RSET_GPR8 ;
 int XG_ARITHi (int ) ;
 int XO_ADDSD ;
 int XO_ADDSS ;
 int XO_CVTSD2SS ;
 int XO_CVTSI2SD ;
 int XO_CVTSI2SS ;
 int XO_CVTSS2SD ;
 int XO_CVTTSD2SI ;
 int XO_CVTTSS2SI ;
 int XO_MOV ;
 int XO_MOVD ;
 int XO_MOVSD ;
 int XO_MOVSXb ;
 int XO_MOVSXd ;
 int XO_MOVSXw ;
 int XO_MOVZXb ;
 int XO_MOVZXw ;
 int XO_SUBSD ;
 int XO_TEST ;
 int XO_XORPS ;
 int XOg_ADD ;
 int asm_fuseload (TYPE_3__*,int ,int ) ;
 int asm_fuseloadm (TYPE_3__*,int ,int ,int) ;
 int asm_tointg (TYPE_3__*,TYPE_2__*,int) ;
 int emit_gri (TYPE_3__*,int ,int,int ) ;
 int emit_label (TYPE_3__*) ;
 int emit_mrm (TYPE_3__*,int ,int,int) ;
 int emit_rma (TYPE_3__*,int ,int,int *) ;
 int emit_rr (TYPE_3__*,int ,int,int) ;
 int emit_sjcc (TYPE_3__*,int ,int ) ;
 scalar_t__ irt_is64 (int ) ;
 scalar_t__ irt_isfloat (int ) ;
 scalar_t__ irt_isfp (int ) ;
 scalar_t__ irt_isguard (int ) ;
 scalar_t__ irt_isint (int ) ;
 scalar_t__ irt_isint64 (int ) ;
 scalar_t__ irt_isnum (int ) ;
 scalar_t__ irt_isu32 (int ) ;
 scalar_t__ irt_isu64 (int ) ;
 scalar_t__ irt_type (int ) ;
 int lua_assert (int) ;
 int ra_alloc1 (TYPE_3__*,int ,int ) ;
 int ra_dest (TYPE_3__*,TYPE_2__*,int ) ;
 int ra_left (TYPE_3__*,int,int ) ;
 scalar_t__ ra_noreg (int ) ;
 int ra_scratch (TYPE_3__*,int ) ;
 int rset_exclude (int ,int) ;
 int rset_test (int ,int) ;

__attribute__((used)) static void asm_conv(ASMState *as, IRIns *ir)
{
  IRType st = (IRType)(ir->op2 & IRCONV_SRCMASK);
  int st64 = (st == IRT_I64 || st == IRT_U64 || (LJ_64 && st == IRT_P64));
  int stfp = (st == IRT_NUM || st == IRT_FLOAT);
  IRRef lref = ir->op1;
  lua_assert(irt_type(ir->t) != st);
  lua_assert(!(LJ_32 && (irt_isint64(ir->t) || st64)));
  if (irt_isfp(ir->t)) {
    Reg dest = ra_dest(as, ir, RSET_FPR);
    if (stfp) {
      Reg left = asm_fuseload(as, lref, RSET_FPR);
      emit_mrm(as, st == IRT_NUM ? XO_CVTSD2SS : XO_CVTSS2SD, dest, left);
      if (left == dest) return;
    } else if (LJ_32 && st == IRT_U32) {

      cTValue *k = &as->J->k64[LJ_K64_TOBIT];
      Reg bias = ra_scratch(as, rset_exclude(RSET_FPR, dest));
      if (irt_isfloat(ir->t))
 emit_rr(as, XO_CVTSD2SS, dest, dest);
      emit_rr(as, XO_SUBSD, dest, bias);
      emit_rr(as, XO_XORPS, dest, bias);
      emit_rma(as, XO_MOVSD, bias, k);
      emit_mrm(as, XO_MOVD, dest, asm_fuseload(as, lref, RSET_GPR));
      return;
    } else {
      Reg left = (LJ_64 && (st == IRT_U32 || st == IRT_U64)) ?
   ra_alloc1(as, lref, RSET_GPR) :
   asm_fuseloadm(as, lref, RSET_GPR, st64);
      if (LJ_64 && st == IRT_U64) {
 MCLabel l_end = emit_label(as);
 cTValue *k = &as->J->k64[LJ_K64_2P64];
 emit_rma(as, XO_ADDSD, dest, k);
 emit_sjcc(as, CC_NS, l_end);
 emit_rr(as, XO_TEST, left|REX_64, left);
      }
      emit_mrm(as, irt_isnum(ir->t) ? XO_CVTSI2SD : XO_CVTSI2SS,
        dest|((LJ_64 && (st64 || st == IRT_U32)) ? REX_64 : 0), left);
    }
    emit_rr(as, XO_XORPS, dest, dest);
  } else if (stfp) {
    if (irt_isguard(ir->t)) {

      lua_assert(irt_isint(ir->t) && st == IRT_NUM);
      asm_tointg(as, ir, ra_alloc1(as, lref, RSET_FPR));
    } else {
      Reg dest = ra_dest(as, ir, RSET_GPR);
      x86Op op = st == IRT_NUM ? XO_CVTTSD2SI : XO_CVTTSS2SI;
      if (LJ_64 ? irt_isu64(ir->t) : irt_isu32(ir->t)) {


 Reg tmp = ra_noreg(IR(lref)->r) ? ra_alloc1(as, lref, RSET_FPR) :
       ra_scratch(as, RSET_FPR);
 MCLabel l_end = emit_label(as);
 if (LJ_32)
   emit_gri(as, XG_ARITHi(XOg_ADD), dest, (int32_t)0x80000000);
 emit_rr(as, op, dest|REX_64, tmp);
 if (st == IRT_NUM)
   emit_rma(as, XO_ADDSD, tmp, &as->J->k64[LJ_K64_M2P64_31]);
 else
   emit_rma(as, XO_ADDSS, tmp, &as->J->k32[LJ_K32_M2P64_31]);
 emit_sjcc(as, CC_NS, l_end);
 emit_rr(as, XO_TEST, dest|REX_64, dest);
 emit_rr(as, op, dest|REX_64, tmp);
 ra_left(as, tmp, lref);
      } else {
 if (LJ_64 && irt_isu32(ir->t))
   emit_rr(as, XO_MOV, dest, dest);
 emit_mrm(as, op,
   dest|((LJ_64 &&
   (irt_is64(ir->t) || irt_isu32(ir->t))) ? REX_64 : 0),
   asm_fuseload(as, lref, RSET_FPR));
      }
    }
  } else if (st >= IRT_I8 && st <= IRT_U16) {
    Reg left, dest = ra_dest(as, ir, RSET_GPR);
    RegSet allow = RSET_GPR;
    x86Op op;
    lua_assert(irt_isint(ir->t) || irt_isu32(ir->t));
    if (st == IRT_I8) {
      op = XO_MOVSXb; allow = RSET_GPR8; dest |= FORCE_REX;
    } else if (st == IRT_U8) {
      op = XO_MOVZXb; allow = RSET_GPR8; dest |= FORCE_REX;
    } else if (st == IRT_I16) {
      op = XO_MOVSXw;
    } else {
      op = XO_MOVZXw;
    }
    left = asm_fuseload(as, lref, allow);

    if (!LJ_64 && left != RID_MRM && !rset_test(allow, left)) {
      Reg tmp = ra_scratch(as, allow);
      emit_rr(as, op, dest, tmp);
      emit_rr(as, XO_MOV, tmp, left);
    } else {
      emit_mrm(as, op, dest, left);
    }
  } else {
    if (LJ_32) {
      Reg dest = ra_dest(as, ir, RSET_GPR);
      ra_left(as, dest, lref);
    } else if (irt_is64(ir->t)) {
      Reg dest = ra_dest(as, ir, RSET_GPR);
      if (st64 || !(ir->op2 & IRCONV_SEXT)) {

 ra_left(as, dest, lref);
      } else {
 Reg left = asm_fuseload(as, lref, RSET_GPR);
 emit_mrm(as, XO_MOVSXd, dest|REX_64, left);
      }
    } else {
      Reg dest = ra_dest(as, ir, RSET_GPR);
      if (st64) {
 Reg left = asm_fuseload(as, lref, RSET_GPR);



 emit_mrm(as, XO_MOV, dest, left);
      } else {
 ra_left(as, dest, lref);
      }
    }
  }
}
