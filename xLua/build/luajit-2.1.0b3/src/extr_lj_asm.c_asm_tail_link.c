
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_20__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_18__ ;


typedef int int32_t ;
struct TYPE_27__ {scalar_t__ ktrace; int curfinal; } ;
struct TYPE_26__ {int const startins; } ;
struct TYPE_25__ {int freeset; int topslot; int parent; TYPE_5__* J; TYPE_1__* T; } ;
struct TYPE_24__ {size_t mapofs; size_t nent; scalar_t__ nslots; int topslot; } ;
struct TYPE_23__ {int o; int gcr; } ;
struct TYPE_22__ {size_t nsnap; scalar_t__ link; int * snapmap; TYPE_2__* snap; } ;
struct TYPE_21__ {int const* dispatch; } ;
typedef TYPE_2__ SnapShot ;
typedef size_t SnapNo ;
typedef scalar_t__ BCReg ;
typedef int const BCIns ;
typedef TYPE_3__ ASMState ;




 int BC_FUNCF ;
 int BC_JLOOP ;


 TYPE_20__* IR (scalar_t__) ;
 int IR_KGC ;
 TYPE_18__* J2GG (TYPE_5__*) ;
 scalar_t__ LJ_FR2 ;
 size_t LJ_GC64 ;
 int REF_BASE ;
 int RID2RSET (int ) ;
 int RID_BASE ;
 int RID_DISPATCH ;
 int RID_LPC ;
 int RID_RET ;
 int RSET_GPR ;
 scalar_t__ asm_baseslot (TYPE_3__*,TYPE_2__*,int*) ;
 int asm_stack_check (TYPE_3__*,int ,int *,int,size_t) ;
 int asm_stack_restore (TYPE_3__*,TYPE_2__*) ;
 scalar_t__ bc_a (int const) ;
 scalar_t__ bc_c (int const) ;
 scalar_t__ bc_d (int const) ;
 scalar_t__ bc_isret (int) ;
 int bc_op (int const) ;
 int checkmclim (TYPE_3__*) ;
 int emit_addptr (TYPE_3__*,int ,int) ;
 int emit_loadu64 (TYPE_3__*,int ,int ) ;
 int emit_setgl (TYPE_3__*,int ,int ) ;
 int i32ptr (int const*) ;
 int jit_base ;
 int obj2gco (int ) ;
 int ra_allockreg (TYPE_3__*,int,int ) ;
 int ra_allocref (TYPE_3__*,int ,int ) ;
 int setgcref (int ,int ) ;
 int const* snap_pc (int *) ;
 TYPE_4__* traceref (TYPE_5__*,scalar_t__) ;
 int u64ptr (int const*) ;

__attribute__((used)) static void asm_tail_link(ASMState *as)
{
  SnapNo snapno = as->T->nsnap-1;
  SnapShot *snap = &as->T->snap[snapno];
  int gotframe = 0;
  BCReg baseslot = asm_baseslot(as, snap, &gotframe);

  as->topslot = snap->topslot;
  checkmclim(as);
  ra_allocref(as, REF_BASE, RID2RSET(RID_BASE));

  if (as->T->link == 0) {

    const BCIns *pc = snap_pc(&as->T->snapmap[snap->mapofs + snap->nent]);
    int32_t mres;
    if (bc_op(*pc) == BC_JLOOP) {
      BCIns *retpc = &traceref(as->J, bc_d(*pc))->startins;
      if (bc_isret(bc_op(*retpc)))
 pc = retpc;
    }



    ra_allockreg(as, i32ptr(J2GG(as->J)->dispatch), RID_DISPATCH);
    ra_allockreg(as, i32ptr(pc), RID_LPC);

    mres = (int32_t)(snap->nslots - baseslot - LJ_FR2);
    switch (bc_op(*pc)) {
    case 131: case 130:
      mres -= (int32_t)(1 + LJ_FR2 + bc_a(*pc) + bc_c(*pc)); break;
    case 129: mres -= (int32_t)(bc_a(*pc) + bc_d(*pc)); break;
    case 128: mres -= (int32_t)bc_a(*pc); break;
    default: if (bc_op(*pc) < BC_FUNCF) mres = 0; break;
    }
    ra_allockreg(as, mres, RID_RET);
  } else if (baseslot) {

    emit_setgl(as, RID_BASE, jit_base);
  }
  emit_addptr(as, RID_BASE, 8*(int32_t)baseslot);

  if (as->J->ktrace) {
    setgcref(IR(as->J->ktrace)[LJ_GC64].gcr, obj2gco(as->J->curfinal));
    IR(as->J->ktrace)->o = IR_KGC;
  }


  asm_stack_restore(as, snap);


  if (!as->parent && gotframe)
    asm_stack_check(as, as->topslot, ((void*)0), as->freeset & RSET_GPR, snapno);
}
