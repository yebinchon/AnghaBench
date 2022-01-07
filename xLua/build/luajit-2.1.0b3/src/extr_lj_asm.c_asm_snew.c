
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int gcsteps; } ;
struct TYPE_8__ {int op2; int op1; } ;
typedef int IRRef ;
typedef TYPE_1__ IRIns ;
typedef int CCallInfo ;
typedef TYPE_2__ ASMState ;


 int ASMREF_L ;
 size_t IRCALL_lj_str_new ;
 int asm_gencall (TYPE_2__*,int const*,int *) ;
 int asm_setupresult (TYPE_2__*,TYPE_1__*,int const*) ;
 int * lj_ir_callinfo ;

__attribute__((used)) static void asm_snew(ASMState *as, IRIns *ir)
{
  const CCallInfo *ci = &lj_ir_callinfo[IRCALL_lj_str_new];
  IRRef args[3];
  args[0] = ASMREF_L;
  args[1] = ir->op1;
  args[2] = ir->op2;
  as->gcsteps++;
  asm_setupresult(as, ir, ci);
  asm_gencall(as, ci, args);
}
