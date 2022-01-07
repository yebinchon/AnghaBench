
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t op2; } ;
typedef int IRRef ;
typedef TYPE_1__ IRIns ;
typedef int CCallInfo ;
typedef int ASMState ;


 int CCI_NARGS_MAX ;
 int asm_collectargs (int *,TYPE_1__*,int const*,int *) ;
 int asm_gencall (int *,int const*,int *) ;
 int asm_setupresult (int *,TYPE_1__*,int const*) ;
 int * lj_ir_callinfo ;

__attribute__((used)) static void asm_call(ASMState *as, IRIns *ir)
{
  IRRef args[CCI_NARGS_MAX];
  const CCallInfo *ci = &lj_ir_callinfo[ir->op2];
  asm_collectargs(as, ir, ci, args);
  asm_setupresult(as, ir, ci);
  asm_gencall(as, ci, args);
}
