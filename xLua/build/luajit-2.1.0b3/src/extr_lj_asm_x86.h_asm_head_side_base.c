
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int freeset; int modset; } ;
struct TYPE_9__ {int r; int t; } ;
typedef int RegSet ;
typedef int Reg ;
typedef TYPE_1__ IRIns ;
typedef TYPE_2__ ASMState ;


 TYPE_1__* IR (int ) ;
 int REF_BASE ;
 int REX_GC64 ;
 int RID_INIT ;
 int XO_MOV ;
 int emit_getgl (TYPE_2__*,int,int ) ;
 int emit_rr (TYPE_2__*,int ,int,int) ;
 scalar_t__ irt_ismarked (int ) ;
 int jit_base ;
 int ra_free (TYPE_2__*,int) ;
 scalar_t__ ra_hasreg (int) ;
 int rset_clear (int ,int) ;
 scalar_t__ rset_test (int ,int) ;

__attribute__((used)) static RegSet asm_head_side_base(ASMState *as, IRIns *irp, RegSet allow)
{
  IRIns *ir = IR(REF_BASE);
  Reg r = ir->r;
  if (ra_hasreg(r)) {
    ra_free(as, r);
    if (rset_test(as->modset, r) || irt_ismarked(ir->t))
      ir->r = RID_INIT;
    if (irp->r == r) {
      rset_clear(allow, r);
    } else if (ra_hasreg(irp->r) && rset_test(as->freeset, irp->r)) {

      rset_clear(allow, irp->r);
      emit_rr(as, XO_MOV, r|REX_GC64, irp->r);
    } else {
      emit_getgl(as, r, jit_base);
    }
  }
  return allow;
}
