
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_8__ {TYPE_1__* T; int ir; int J; int loopsnapno; int * phireg; scalar_t__ phiset; } ;
struct TYPE_7__ {int s; scalar_t__ r; int t; } ;
struct TYPE_6__ {int ir; } ;
typedef scalar_t__ RegSet ;
typedef size_t Reg ;
typedef int IRRef ;
typedef TYPE_2__ IRIns ;
typedef TYPE_3__ ASMState ;


 TYPE_2__* IR (int ) ;
 int IRT (int ,int ) ;
 int IRT_NIL ;
 int IR_RENAME ;
 int SPS_NONE ;
 int irt_clearmark (int ) ;
 scalar_t__ irt_ismarked (int ) ;
 int lj_ir_emit (int ) ;
 int lj_ir_set (int ,int ,int ,int ) ;
 scalar_t__ ra_hasspill (int ) ;
 int rset_clear (scalar_t__,size_t) ;
 size_t rset_picktop (scalar_t__) ;
 int tref_ref (int ) ;

__attribute__((used)) static void asm_phi_fixup(ASMState *as)
{
  RegSet work = as->phiset;
  while (work) {
    Reg r = rset_picktop(work);
    IRRef lref = as->phireg[r];
    IRIns *ir = IR(lref);
    if (irt_ismarked(ir->t)) {
      irt_clearmark(ir->t);

      if (ra_hasspill(ir->s)) {
 IRRef ren;
 lj_ir_set(as->J, IRT(IR_RENAME, IRT_NIL), lref, as->loopsnapno);
 ren = tref_ref(lj_ir_emit(as->J));
 as->ir = as->T->ir;
 IR(ren)->r = (uint8_t)r;
 IR(ren)->s = SPS_NONE;
      }
    }
    rset_clear(work, r);
  }
}
