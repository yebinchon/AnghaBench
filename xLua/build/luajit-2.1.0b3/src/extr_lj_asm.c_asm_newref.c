
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ r; int op2; int op1; } ;
typedef int IRRef ;
typedef TYPE_1__ IRIns ;
typedef int CCallInfo ;
typedef int ASMState ;


 int ASMREF_L ;
 int ASMREF_TMP1 ;
 size_t IRCALL_lj_tab_newkey ;
 scalar_t__ RID_SINK ;
 int asm_gencall (int *,int const*,int *) ;
 int asm_setupresult (int *,TYPE_1__*,int const*) ;
 int asm_tvptr (int *,int ,int ) ;
 int * lj_ir_callinfo ;
 int ra_releasetmp (int *,int ) ;

__attribute__((used)) static void asm_newref(ASMState *as, IRIns *ir)
{
  const CCallInfo *ci = &lj_ir_callinfo[IRCALL_lj_tab_newkey];
  IRRef args[3];
  if (ir->r == RID_SINK)
    return;
  args[0] = ASMREF_L;
  args[1] = ir->op1;
  args[2] = ASMREF_TMP1;
  asm_setupresult(as, ir, ci);
  asm_gencall(as, ci, args);
  asm_tvptr(as, ra_releasetmp(as, ASMREF_TMP1), ir->op2);
}
