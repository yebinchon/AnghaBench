
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int gcsteps; } ;
struct TYPE_10__ {scalar_t__ op2; int op1; } ;
typedef int IRRef ;
typedef TYPE_1__ IRIns ;
typedef int CCallInfo ;
typedef TYPE_2__ ASMState ;


 int ASMREF_L ;
 int ASMREF_TMP1 ;
 size_t IRCALL_lj_strfmt_char ;
 size_t IRCALL_lj_strfmt_int ;
 size_t IRCALL_lj_strfmt_num ;
 scalar_t__ IRTOSTR_INT ;
 scalar_t__ IRTOSTR_NUM ;
 int asm_gencall (TYPE_2__*,int const*,int *) ;
 int asm_setupresult (TYPE_2__*,TYPE_1__*,int const*) ;
 int asm_tvptr (TYPE_2__*,int ,int ) ;
 int * lj_ir_callinfo ;
 int ra_releasetmp (TYPE_2__*,int ) ;

__attribute__((used)) static void asm_tostr(ASMState *as, IRIns *ir)
{
  const CCallInfo *ci;
  IRRef args[2];
  args[0] = ASMREF_L;
  as->gcsteps++;
  if (ir->op2 == IRTOSTR_NUM) {
    args[1] = ASMREF_TMP1;
    ci = &lj_ir_callinfo[IRCALL_lj_strfmt_num];
  } else {
    args[1] = ir->op1;
    if (ir->op2 == IRTOSTR_INT)
      ci = &lj_ir_callinfo[IRCALL_lj_strfmt_int];
    else
      ci = &lj_ir_callinfo[IRCALL_lj_strfmt_char];
  }
  asm_setupresult(as, ir, ci);
  asm_gencall(as, ci, args);
  if (ir->op2 == IRTOSTR_NUM)
    asm_tvptr(as, ra_releasetmp(as, ASMREF_TMP1), ir->op1);
}
