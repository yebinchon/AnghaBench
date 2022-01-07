
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int s; int op1; int r; } ;
typedef int RegSet ;
typedef int IRRef ;
typedef TYPE_1__ IRIns ;
typedef int CCallInfo ;
typedef int ASMState ;


 int ASMREF_TMP1 ;
 int CC_E ;
 size_t IRCALL_lj_strscan_num ;
 int REX_64 ;
 int RID_ESP ;
 int RID_RET ;
 int RSET_FPR ;
 int RSET_SCRATCH ;
 int XO_LEA ;
 int XO_TEST ;
 int asm_gencall (int *,int const*,int *) ;
 int asm_guardcc (int *,int ) ;
 int emit_rmro (int *,int ,int,int ,int ) ;
 int emit_rr (int *,int ,int ,int ) ;
 int * lj_ir_callinfo ;
 int ra_evictset (int *,int) ;
 scalar_t__ ra_hasreg (int ) ;
 int ra_releasetmp (int *,int ) ;
 int rset_set (int,int ) ;
 int sps_scale (int ) ;

__attribute__((used)) static void asm_strto(ASMState *as, IRIns *ir)
{

  const CCallInfo *ci = &lj_ir_callinfo[IRCALL_lj_strscan_num];
  IRRef args[2];
  RegSet drop = RSET_SCRATCH;
  if ((drop & RSET_FPR) != RSET_FPR && ra_hasreg(ir->r))
    rset_set(drop, ir->r);
  ra_evictset(as, drop);
  asm_guardcc(as, CC_E);
  emit_rr(as, XO_TEST, RID_RET, RID_RET);
  args[0] = ir->op1;
  args[1] = ASMREF_TMP1;
  asm_gencall(as, ci, args);

  emit_rmro(as, XO_LEA, ra_releasetmp(as, ASMREF_TMP1)|REX_64,
     RID_ESP, sps_scale(ir->s));
}
