
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int gcsteps; } ;
struct TYPE_10__ {int op1; int op2; } ;
typedef int IRRef ;
typedef TYPE_1__ IRIns ;
typedef int CCallInfo ;
typedef TYPE_2__ ASMState ;


 int ASMREF_L ;
 int ASMREF_TMP1 ;
 size_t IRCALL_lj_tab_new1 ;
 int asm_gencall (TYPE_2__*,int const*,int *) ;
 int asm_setupresult (TYPE_2__*,TYPE_1__*,int const*) ;
 int * lj_ir_callinfo ;
 int ra_allockreg (TYPE_2__*,int,int ) ;
 int ra_releasetmp (TYPE_2__*,int ) ;

__attribute__((used)) static void asm_tnew(ASMState *as, IRIns *ir)
{
  const CCallInfo *ci = &lj_ir_callinfo[IRCALL_lj_tab_new1];
  IRRef args[2];
  args[0] = ASMREF_L;
  args[1] = ASMREF_TMP1;
  as->gcsteps++;
  asm_setupresult(as, ir, ci);
  asm_gencall(as, ci, args);
  ra_allockreg(as, ir->op1 | (ir->op2 << 24), ra_releasetmp(as, ASMREF_TMP1));
}
