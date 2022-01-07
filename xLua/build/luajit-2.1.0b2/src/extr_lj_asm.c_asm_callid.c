
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int op2; int op1; } ;
typedef int IRRef ;
typedef TYPE_1__ IRIns ;
typedef size_t IRCallID ;
typedef int CCallInfo ;
typedef int ASMState ;


 int asm_gencall (int *,int const*,int *) ;
 int asm_setupresult (int *,TYPE_1__*,int const*) ;
 int * lj_ir_callinfo ;

__attribute__((used)) static void asm_callid(ASMState *as, IRIns *ir, IRCallID id)
{
  const CCallInfo *ci = &lj_ir_callinfo[id];
  IRRef args[2];
  args[0] = ir->op1;
  args[1] = ir->op2;
  asm_setupresult(as, ir, ci);
  asm_gencall(as, ci, args);
}
