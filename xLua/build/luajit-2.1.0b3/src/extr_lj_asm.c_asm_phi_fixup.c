
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int loopsnapno; int * phireg; scalar_t__ phiset; } ;
struct TYPE_6__ {int s; int t; } ;
typedef scalar_t__ RegSet ;
typedef size_t Reg ;
typedef int IRRef ;
typedef TYPE_1__ IRIns ;
typedef TYPE_2__ ASMState ;


 TYPE_1__* IR (int ) ;
 int irt_clearmark (int ) ;
 scalar_t__ irt_ismarked (int ) ;
 int ra_addrename (TYPE_2__*,size_t,int ,int ) ;
 scalar_t__ ra_hasspill (int ) ;
 int rset_clear (scalar_t__,size_t) ;
 size_t rset_picktop (scalar_t__) ;

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
 ra_addrename(as, r, lref, as->loopsnapno);
      }
    }
    rset_clear(work, r);
  }
}
