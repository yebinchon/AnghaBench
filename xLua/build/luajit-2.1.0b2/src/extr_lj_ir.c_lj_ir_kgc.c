
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_10__ {TYPE_4__* ir; } ;
struct TYPE_12__ {int* chain; TYPE_1__ cur; } ;
typedef TYPE_3__ jit_State ;
struct TYPE_11__ {scalar_t__ irt; } ;
struct TYPE_13__ {int prev; size_t o; TYPE_2__ t; int gcr; } ;
typedef int TRef ;
typedef scalar_t__ IRType ;
typedef int IRRef1 ;
typedef int IRRef ;
typedef TYPE_4__ IRIns ;
typedef int GCobj ;


 TYPE_4__* IR (int) ;
 size_t IR_KGC ;
 int J2G (TYPE_3__*) ;
 int LJ_GC64 ;
 int TREF (int,scalar_t__) ;
 int * ir_kgc (TYPE_4__*) ;
 int ir_nextk (TYPE_3__*) ;
 int isdead (int ,int *) ;
 int lua_assert (int) ;
 int setgcref (int ,int *) ;

TRef lj_ir_kgc(jit_State *J, GCobj *o, IRType t)
{
  IRIns *ir, *cir = J->cur.ir;
  IRRef ref;
  lua_assert(!LJ_GC64);
  lua_assert(!isdead(J2G(J), o));
  for (ref = J->chain[IR_KGC]; ref; ref = cir[ref].prev)
    if (ir_kgc(&cir[ref]) == o)
      goto found;
  ref = ir_nextk(J);
  ir = IR(ref);

  setgcref(ir->gcr, o);
  ir->t.irt = (uint8_t)t;
  ir->o = IR_KGC;
  ir->prev = J->chain[IR_KGC];
  J->chain[IR_KGC] = (IRRef1)ref;
found:
  return TREF(ref, t);
}
