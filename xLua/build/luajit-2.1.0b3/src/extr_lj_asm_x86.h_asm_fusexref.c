
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef void* uint8_t ;
typedef int int32_t ;
struct TYPE_14__ {int ofs; void* base; void* idx; void* scale; } ;
struct TYPE_16__ {TYPE_1__ mrm; } ;
struct TYPE_15__ {scalar_t__ o; int i; scalar_t__ op2; scalar_t__ op1; int r; } ;
typedef int RegSet ;
typedef scalar_t__ Reg ;
typedef scalar_t__ IRRef ;
typedef TYPE_2__ IRIns ;
typedef TYPE_3__ ASMState ;


 TYPE_2__* IR (scalar_t__) ;
 scalar_t__ IR_ADD ;
 scalar_t__ IR_BSHL ;
 scalar_t__ IR_KKPTR ;
 scalar_t__ IR_KPTR ;
 scalar_t__ IR_STRREF ;
 void* RID_DISPATCH ;
 void* RID_NONE ;
 void* XM_SCALE1 ;
 void* XM_SCALE2 ;
 int asm_fusestrref (TYPE_3__*,TYPE_2__*,int ) ;
 scalar_t__ asm_isk32 (TYPE_3__*,scalar_t__,int*) ;
 scalar_t__ canfuse (TYPE_3__*,TYPE_2__*) ;
 scalar_t__ checki32 (intptr_t) ;
 intptr_t dispofs (TYPE_3__*,int ) ;
 int ir_kptr (TYPE_2__*) ;
 scalar_t__ irref_isk (scalar_t__) ;
 scalar_t__ ra_alloc1 (TYPE_3__*,scalar_t__,int ) ;
 scalar_t__ ra_noreg (int ) ;
 int rset_clear (int ,scalar_t__) ;

__attribute__((used)) static void asm_fusexref(ASMState *as, IRRef ref, RegSet allow)
{
  IRIns *ir = IR(ref);
  as->mrm.idx = RID_NONE;
  if (ir->o == IR_KPTR || ir->o == IR_KKPTR) {
    as->mrm.ofs = ir->i;
    as->mrm.base = RID_NONE;
  } else if (ir->o == IR_STRREF) {
    asm_fusestrref(as, ir, allow);

  } else {
    as->mrm.ofs = 0;
    if (canfuse(as, ir) && ir->o == IR_ADD && ra_noreg(ir->r)) {

      IRIns *irx;
      IRRef idx;
      Reg r;
      if (asm_isk32(as, ir->op2, &as->mrm.ofs)) {
 ref = ir->op1;
 ir = IR(ref);
 if (!(ir->o == IR_ADD && canfuse(as, ir) && ra_noreg(ir->r)))
   goto noadd;
      }
      as->mrm.scale = XM_SCALE1;
      idx = ir->op1;
      ref = ir->op2;
      irx = IR(idx);
      if (!(irx->o == IR_BSHL || irx->o == IR_ADD)) {
 idx = ir->op2;
 ref = ir->op1;
 irx = IR(idx);
      }
      if (canfuse(as, irx) && ra_noreg(irx->r)) {
 if (irx->o == IR_BSHL && irref_isk(irx->op2) && IR(irx->op2)->i <= 3) {

   idx = irx->op1;
   as->mrm.scale = (uint8_t)(IR(irx->op2)->i << 6);
 } else if (irx->o == IR_ADD && irx->op1 == irx->op2) {

   idx = irx->op1;
   as->mrm.scale = XM_SCALE2;
 }
      }
      r = ra_alloc1(as, idx, allow);
      rset_clear(allow, r);
      as->mrm.idx = (uint8_t)r;
    }
  noadd:
    as->mrm.base = (uint8_t)ra_alloc1(as, ref, allow);
  }
}
