
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_14__ {int flags; scalar_t__ func; } ;
struct TYPE_13__ {scalar_t__ o; int op1; int op2; } ;
typedef int RegSet ;
typedef int Reg ;
typedef int IRRef ;
typedef TYPE_1__ IRIns ;
typedef TYPE_2__ CCallInfo ;
typedef int ASMState ;
typedef scalar_t__ ASMFunction ;


 int CCI_CC_CDECL ;
 int CCI_CC_MASK ;
 int CCI_NARGS_MAX ;
 TYPE_1__* IR (int ) ;
 scalar_t__ IR_CARG ;
 scalar_t__ LJ_32 ;
 int RSET_GPR ;
 int RSET_SCRATCH ;
 int XO_GROUP5 ;
 int XOg_CALL ;
 int asm_callx_flags (int *,TYPE_1__*) ;
 scalar_t__ asm_callx_func (int *,TYPE_1__*,int ) ;
 int asm_collectargs (int *,TYPE_1__*,TYPE_2__*,int *) ;
 int asm_count_call_slots (int *,TYPE_2__*,int *) ;
 int asm_gencall (int *,TYPE_2__*,int *) ;
 int asm_setupresult (int *,TYPE_1__*,TYPE_2__*) ;
 int emit_rr (int *,int ,int ,int ) ;
 int emit_spsub (int *,int) ;
 int ra_alloc1 (int *,int ,int) ;

__attribute__((used)) static void asm_callx(ASMState *as, IRIns *ir)
{
  IRRef args[CCI_NARGS_MAX*2];
  CCallInfo ci;
  IRRef func;
  IRIns *irf;
  int32_t spadj = 0;
  ci.flags = asm_callx_flags(as, ir);
  asm_collectargs(as, ir, &ci, args);
  asm_setupresult(as, ir, &ci);





  func = ir->op2; irf = IR(func);
  if (irf->o == IR_CARG) { func = irf->op1; irf = IR(func); }
  ci.func = (ASMFunction)asm_callx_func(as, irf, func);
  if (!(void *)ci.func) {

    RegSet allow = (RSET_GPR & ~RSET_SCRATCH);
    Reg r = ra_alloc1(as, func, allow);
    if (LJ_32) emit_spsub(as, spadj);
    emit_rr(as, XO_GROUP5, XOg_CALL, r);
  } else if (LJ_32) {
    emit_spsub(as, spadj);
  }
  asm_gencall(as, &ci, args);
}
