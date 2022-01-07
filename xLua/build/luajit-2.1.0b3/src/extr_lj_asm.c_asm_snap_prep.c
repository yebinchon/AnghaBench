
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ curins; scalar_t__ snapref; size_t snapno; size_t snaprename; TYPE_2__* T; } ;
struct TYPE_10__ {scalar_t__ op2; int op1; } ;
struct TYPE_9__ {size_t nins; TYPE_3__* ir; TYPE_1__* snap; } ;
struct TYPE_8__ {scalar_t__ ref; } ;
typedef TYPE_3__ IRIns ;
typedef TYPE_4__ ASMState ;


 scalar_t__ REF_BIAS ;
 int asm_snap_alloc (TYPE_4__*) ;
 scalar_t__ asm_snap_checkrename (TYPE_4__*,int ) ;

__attribute__((used)) static void asm_snap_prep(ASMState *as)
{
  if (as->curins < as->snapref) {
    do {
      if (as->snapno == 0) return;
      as->snapno--;
      as->snapref = as->T->snap[as->snapno].ref;
    } while (as->curins < as->snapref);
    asm_snap_alloc(as);
    as->snaprename = as->T->nins;
  } else {

    for (; as->snaprename < as->T->nins; as->snaprename++) {
      IRIns *ir = &as->T->ir[as->snaprename];
      if (asm_snap_checkrename(as, ir->op1))
 ir->op2 = REF_BIAS-1;
    }
  }
}
