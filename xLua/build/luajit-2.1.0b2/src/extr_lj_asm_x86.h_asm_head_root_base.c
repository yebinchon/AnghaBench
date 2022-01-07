
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int modset; } ;
struct TYPE_7__ {scalar_t__ r; int t; } ;
typedef scalar_t__ Reg ;
typedef TYPE_1__ IRIns ;
typedef TYPE_2__ ASMState ;


 TYPE_1__* IR (int ) ;
 int REF_BASE ;
 scalar_t__ RID_BASE ;
 scalar_t__ RID_INIT ;
 int XO_MOV ;
 int emit_rr (TYPE_2__*,int ,scalar_t__,scalar_t__) ;
 scalar_t__ irt_ismarked (int ) ;
 int ra_free (TYPE_2__*,scalar_t__) ;
 scalar_t__ ra_hasreg (scalar_t__) ;
 scalar_t__ rset_test (int ,scalar_t__) ;

__attribute__((used)) static void asm_head_root_base(ASMState *as)
{
  IRIns *ir = IR(REF_BASE);
  Reg r = ir->r;
  if (ra_hasreg(r)) {
    ra_free(as, r);
    if (rset_test(as->modset, r) || irt_ismarked(ir->t))
      ir->r = RID_INIT;
    if (r != RID_BASE)
      emit_rr(as, XO_MOV, r, RID_BASE);
  }
}
