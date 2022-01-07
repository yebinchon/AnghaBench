
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int op2; int op1; int r; } ;
typedef int RegSet ;
typedef TYPE_1__ IRIns ;
typedef int ASMState ;


 int RID2RSET (int ) ;
 int RID_EAX ;
 int RID_XMM0 ;
 scalar_t__ RID_XMM1 ;
 int RSET_RANGE (int ,scalar_t__) ;
 int emit_call (int *,int ) ;
 int lj_vm_powi_sse ;
 int ra_destreg (int *,TYPE_1__*,int ) ;
 int ra_evictset (int *,int) ;
 scalar_t__ ra_hasreg (int ) ;
 int ra_left (int *,int ,int ) ;
 int rset_clear (int,int ) ;

__attribute__((used)) static void asm_fppowi(ASMState *as, IRIns *ir)
{

  RegSet drop = RSET_RANGE(RID_XMM0, RID_XMM1+1)|RID2RSET(RID_EAX);
  if (ra_hasreg(ir->r))
    rset_clear(drop, ir->r);
  ra_evictset(as, drop);
  ra_destreg(as, ir, RID_XMM0);
  emit_call(as, lj_vm_powi_sse);
  ra_left(as, RID_XMM0, ir->op1);
  ra_left(as, RID_EAX, ir->op2);
}
