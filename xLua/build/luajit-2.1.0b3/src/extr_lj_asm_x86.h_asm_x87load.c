
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int cTValue ;
struct TYPE_6__ {scalar_t__ o; scalar_t__ op2; int op1; } ;
typedef int IRRef ;
typedef TYPE_1__ IRIns ;
typedef int ASMState ;


 TYPE_1__* IR (int ) ;
 scalar_t__ IRCONV_NUM_INT ;
 scalar_t__ IR_CONV ;
 scalar_t__ IR_KNUM ;
 int RID_ESP ;
 int RSET_EMPTY ;
 int XI_FLD1 ;
 int XI_FLDZ ;
 int XO_FILDd ;
 int XO_FLDq ;
 int XOg_FILDd ;
 int XOg_FLDq ;
 int asm_fuseload (int *,int ,int ) ;
 int emit_mrm (int *,int ,int ,int ) ;
 int emit_rma (int *,int ,int ,int *) ;
 int emit_rmro (int *,int ,int ,int ,int ) ;
 int emit_x87op (int *,int ) ;
 int * ir_knum (TYPE_1__*) ;
 int irref_isk (int ) ;
 scalar_t__ mayfuse (int *,int ) ;
 int ra_spill (int *,TYPE_1__*) ;
 int ra_used (TYPE_1__*) ;
 scalar_t__ tvispone (int *) ;
 scalar_t__ tvispzero (int *) ;

__attribute__((used)) static void asm_x87load(ASMState *as, IRRef ref)
{
  IRIns *ir = IR(ref);
  if (ir->o == IR_KNUM) {
    cTValue *tv = ir_knum(ir);
    if (tvispzero(tv))
      emit_x87op(as, XI_FLDZ);
    else if (tvispone(tv))
      emit_x87op(as, XI_FLD1);
    else
      emit_rma(as, XO_FLDq, XOg_FLDq, tv);
  } else if (ir->o == IR_CONV && ir->op2 == IRCONV_NUM_INT && !ra_used(ir) &&
      !irref_isk(ir->op1) && mayfuse(as, ir->op1)) {
    IRIns *iri = IR(ir->op1);
    emit_rmro(as, XO_FILDd, XOg_FILDd, RID_ESP, ra_spill(as, iri));
  } else {
    emit_mrm(as, XO_FLDq, XOg_FLDq, asm_fuseload(as, ref, RSET_EMPTY));
  }
}
