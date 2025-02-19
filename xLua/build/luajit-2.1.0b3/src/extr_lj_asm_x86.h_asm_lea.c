
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef void* uint8_t ;
struct TYPE_13__ {size_t base; size_t idx; int ofs; int scale; } ;
struct TYPE_15__ {scalar_t__* phireg; TYPE_1__ mrm; } ;
struct TYPE_14__ {scalar_t__ op1; scalar_t__ op2; size_t r; scalar_t__ o; int i; int t; } ;
typedef int RegSet ;
typedef size_t Reg ;
typedef TYPE_2__ IRIns ;
typedef TYPE_3__ ASMState ;


 TYPE_2__* IR (scalar_t__) ;
 scalar_t__ IR_ADD ;
 int RID_MRM ;
 size_t RID_NONE ;
 int RSET_GPR ;
 int XM_SCALE1 ;
 int XO_LEA ;
 int emit_mrm (TYPE_3__*,int ,size_t,int ) ;
 scalar_t__ irref_isk (scalar_t__) ;
 scalar_t__ irt_isphi (int ) ;
 scalar_t__ mayfuse (TYPE_3__*,scalar_t__) ;
 size_t ra_alloc1 (TYPE_3__*,scalar_t__,int ) ;
 size_t ra_dest (TYPE_3__*,TYPE_2__*,int ) ;
 scalar_t__ ra_hasreg (size_t) ;
 int ra_noweak (TYPE_3__*,size_t) ;
 int rset_clear (int ,size_t) ;

__attribute__((used)) static int asm_lea(ASMState *as, IRIns *ir)
{
  IRIns *irl = IR(ir->op1);
  IRIns *irr = IR(ir->op2);
  RegSet allow = RSET_GPR;
  Reg dest;
  as->mrm.base = as->mrm.idx = RID_NONE;
  as->mrm.scale = XM_SCALE1;
  as->mrm.ofs = 0;
  if (ra_hasreg(irl->r)) {
    rset_clear(allow, irl->r);
    ra_noweak(as, irl->r);
    as->mrm.base = irl->r;
    if (irref_isk(ir->op2) || ra_hasreg(irr->r)) {

      if (ra_hasreg(ir->r) &&
   ((irt_isphi(irl->t) && as->phireg[ir->r] == ir->op1) ||
    (irt_isphi(irr->t) && as->phireg[ir->r] == ir->op2)))
 return 0;
      if (irref_isk(ir->op2)) {
 as->mrm.ofs = irr->i;
      } else {
 rset_clear(allow, irr->r);
 ra_noweak(as, irr->r);
 as->mrm.idx = irr->r;
      }
    } else if (irr->o == IR_ADD && mayfuse(as, ir->op2) &&
        irref_isk(irr->op2)) {
      Reg idx = ra_alloc1(as, irr->op1, allow);
      rset_clear(allow, idx);
      as->mrm.idx = (uint8_t)idx;
      as->mrm.ofs = IR(irr->op2)->i;
    } else {
      return 0;
    }
  } else if (ir->op1 != ir->op2 && irl->o == IR_ADD && mayfuse(as, ir->op1) &&
      (irref_isk(ir->op2) || irref_isk(irl->op2))) {
    Reg idx, base = ra_alloc1(as, irl->op1, allow);
    rset_clear(allow, base);
    as->mrm.base = (uint8_t)base;
    if (irref_isk(ir->op2)) {
      as->mrm.ofs = irr->i;
      idx = ra_alloc1(as, irl->op2, allow);
    } else {
      as->mrm.ofs = IR(irl->op2)->i;
      idx = ra_alloc1(as, ir->op2, allow);
    }
    rset_clear(allow, idx);
    as->mrm.idx = (uint8_t)idx;
  } else {
    return 0;
  }
  dest = ra_dest(as, ir, allow);
  emit_mrm(as, XO_LEA, dest, RID_MRM);
  return 1;
}
