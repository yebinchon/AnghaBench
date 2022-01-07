
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int op2; scalar_t__ o; int op1; int r; } ;
typedef int Reg ;
typedef TYPE_1__ IRIns ;
typedef int ASMState ;


 TYPE_1__* IR (int ) ;
 int IRBUFHDR_APPEND ;
 scalar_t__ IR_BUFHDR ;
 int RSET_GPR ;
 int SBuf ;
 int b ;
 int emit_loadofs (int *,TYPE_1__*,int ,int ,int ) ;
 int emit_storeofs (int *,TYPE_1__*,int ,int ,int ) ;
 scalar_t__ irref_isk (int ) ;
 int offsetof (int ,int ) ;
 int p ;
 int ra_allocref (int *,int ,int ) ;
 int ra_dest (int *,TYPE_1__*,int ) ;
 scalar_t__ ra_hasreg (int ) ;
 int ra_left (int *,int ,int ) ;
 int ra_leftov (int *,int ,int ) ;
 int ra_scratch (int *,int ) ;
 int ra_used (TYPE_1__*) ;
 int ra_weak (int *,int ) ;
 int rset_exclude (int ,int ) ;

__attribute__((used)) static void asm_bufhdr(ASMState *as, IRIns *ir)
{
  Reg sb = ra_dest(as, ir, RSET_GPR);
  if ((ir->op2 & IRBUFHDR_APPEND)) {

    IRIns *irp = IR(ir->op1);
    if (!(ra_hasreg(irp->r) || irp == ir-1 ||
   (irp == ir-2 && !ra_used(ir-1)))) {
      while (!(irp->o == IR_BUFHDR && !(irp->op2 & IRBUFHDR_APPEND)))
 irp = IR(irp->op1);
      if (irref_isk(irp->op1)) {
 ra_weak(as, ra_allocref(as, ir->op1, RSET_GPR));
 ir = irp;
      }
    }
  } else {
    Reg tmp = ra_scratch(as, rset_exclude(RSET_GPR, sb));

    emit_storeofs(as, ir, tmp, sb, offsetof(SBuf, p));
    emit_loadofs(as, ir, tmp, sb, offsetof(SBuf, b));
  }



  ra_leftov(as, sb, ir->op1);

}
