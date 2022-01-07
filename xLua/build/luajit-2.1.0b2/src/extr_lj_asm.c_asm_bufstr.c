
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int gcsteps; } ;
struct TYPE_8__ {int op1; } ;
typedef int IRRef ;
typedef TYPE_1__ IRIns ;
typedef int CCallInfo ;
typedef TYPE_2__ ASMState ;


 size_t IRCALL_lj_buf_tostr ;
 int asm_gencall (TYPE_2__*,int const*,int *) ;
 int asm_setupresult (TYPE_2__*,TYPE_1__*,int const*) ;
 int * lj_ir_callinfo ;

__attribute__((used)) static void asm_bufstr(ASMState *as, IRIns *ir)
{
  const CCallInfo *ci = &lj_ir_callinfo[IRCALL_lj_buf_tostr];
  IRRef args[1];
  args[0] = ir->op1;
  as->gcsteps++;
  asm_setupresult(as, ir, ci);
  asm_gencall(as, ci, args);
}
