
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_19__ ;


typedef int x86Op ;
typedef scalar_t__ x86Arith ;
typedef int int32_t ;
struct TYPE_22__ {int* flagmcp; int* mcp; } ;
struct TYPE_21__ {scalar_t__ op1; scalar_t__ op2; int t; } ;
struct TYPE_20__ {int r; } ;
typedef int RegSet ;
typedef int Reg ;
typedef int MCode ;
typedef scalar_t__ IRRef ;
typedef TYPE_1__ IRIns ;
typedef TYPE_2__ ASMState ;


 int CC_O ;
 TYPE_19__* IR (scalar_t__) ;
 scalar_t__ LJ_64 ;
 int REX_64IR (TYPE_1__*,int ) ;
 int RSET_GPR ;
 int XG_ARITHi (scalar_t__) ;
 scalar_t__ XI_TESTb ;
 int XO_ARITH (scalar_t__) ;
 int XO_IMUL ;
 int XO_IMULi ;
 int XO_IMULi8 ;
 scalar_t__ XOg_X_IMUL ;
 int asm_fuseloadm (TYPE_2__*,scalar_t__,int ,int ) ;
 int asm_guardcc (TYPE_2__*,int ) ;
 int asm_isk32 (TYPE_2__*,scalar_t__,int *) ;
 scalar_t__ asm_swapops (TYPE_2__*,TYPE_1__*) ;
 scalar_t__ checki8 (int ) ;
 int emit_gri (TYPE_2__*,int ,int ,int ) ;
 int emit_i32 (TYPE_2__*,int ) ;
 int emit_i8 (TYPE_2__*,int ) ;
 int emit_mrm (TYPE_2__*,int ,int ,int ) ;
 int irt_is64 (int ) ;
 scalar_t__ irt_isguard (int ) ;
 int ra_dest (TYPE_2__*,TYPE_1__*,int ) ;
 scalar_t__ ra_hasreg (int ) ;
 int ra_left (TYPE_2__*,int ,scalar_t__) ;
 scalar_t__ ra_noreg (int ) ;
 int ra_noweak (TYPE_2__*,int ) ;
 int rset_clear (int ,int ) ;

__attribute__((used)) static void asm_intarith(ASMState *as, IRIns *ir, x86Arith xa)
{
  IRRef lref = ir->op1;
  IRRef rref = ir->op2;
  RegSet allow = RSET_GPR;
  Reg dest, right;
  int32_t k = 0;
  if (as->flagmcp == as->mcp) {
    MCode *p = as->mcp + ((LJ_64 && *as->mcp < XI_TESTb) ? 3 : 2);
    if ((p[1] & 15) < 14) {
      if ((p[1] & 15) >= 12) p[1] -= 4;
      as->flagmcp = ((void*)0);
      as->mcp = p;
    }
  }
  right = IR(rref)->r;
  if (ra_hasreg(right)) {
    rset_clear(allow, right);
    ra_noweak(as, right);
  }
  dest = ra_dest(as, ir, allow);
  if (lref == rref) {
    right = dest;
  } else if (ra_noreg(right) && !asm_isk32(as, rref, &k)) {
    if (asm_swapops(as, ir)) {
      IRRef tmp = lref; lref = rref; rref = tmp;
    }
    right = asm_fuseloadm(as, rref, rset_clear(allow, dest), irt_is64(ir->t));
  }
  if (irt_isguard(ir->t))
    asm_guardcc(as, CC_O);
  if (xa != XOg_X_IMUL) {
    if (ra_hasreg(right))
      emit_mrm(as, XO_ARITH(xa), REX_64IR(ir, dest), right);
    else
      emit_gri(as, XG_ARITHi(xa), REX_64IR(ir, dest), k);
  } else if (ra_hasreg(right)) {
    emit_mrm(as, XO_IMUL, REX_64IR(ir, dest), right);
  } else {

    Reg left = asm_fuseloadm(as, lref, RSET_GPR, irt_is64(ir->t));
    x86Op xo;
    if (checki8(k)) { emit_i8(as, k); xo = XO_IMULi8;
    } else { emit_i32(as, k); xo = XO_IMULi; }
    emit_mrm(as, xo, REX_64IR(ir, dest), left);
    return;
  }
  ra_left(as, dest, lref);
}
