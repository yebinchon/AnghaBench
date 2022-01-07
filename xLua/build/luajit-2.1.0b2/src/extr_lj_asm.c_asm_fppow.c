
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IRRef ;
typedef int IRIns ;
typedef int CCallInfo ;
typedef int ASMState ;


 size_t IRCALL_pow ;
 int asm_gencall (int *,int const*,int *) ;
 int asm_setupresult (int *,int *,int const*) ;
 int * lj_ir_callinfo ;

__attribute__((used)) static void asm_fppow(ASMState *as, IRIns *ir, IRRef lref, IRRef rref)
{
  const CCallInfo *ci = &lj_ir_callinfo[IRCALL_pow];
  IRRef args[2];
  args[0] = lref;
  args[1] = rref;
  asm_setupresult(as, ir, ci);
  asm_gencall(as, ci, args);
}
