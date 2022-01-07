
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {TYPE_4__* ir; } ;
struct TYPE_12__ {int* chain; TYPE_1__ cur; } ;
typedef TYPE_3__ jit_State ;
struct TYPE_11__ {int irt; } ;
struct TYPE_13__ {int prev; size_t o; TYPE_2__ t; int ptr; scalar_t__ op12; } ;
typedef int TRef ;
typedef int IRRef1 ;
typedef int IRRef ;
typedef size_t IROp ;
typedef TYPE_4__ IRIns ;


 TYPE_4__* IR (int) ;
 int IRT_PGC ;
 size_t LJ_GC64 ;
 int TREF (int,int ) ;
 void* ir_kptr (TYPE_4__*) ;
 int ir_nextk (TYPE_3__*) ;
 int ir_nextk64 (TYPE_3__*) ;
 int lua_assert (int) ;
 int setmref (int ,void*) ;
 scalar_t__ u32ptr (void*) ;

TRef lj_ir_kptr_(jit_State *J, IROp op, void *ptr)
{
  IRIns *ir, *cir = J->cur.ir;
  IRRef ref;



  for (ref = J->chain[op]; ref; ref = cir[ref].prev)
    if (ir_kptr(&cir[ref]) == ptr)
      goto found;



  ref = ir_nextk(J);

  ir = IR(ref);
  ir->op12 = 0;
  setmref(ir[LJ_GC64].ptr, ptr);
  ir->t.irt = IRT_PGC;
  ir->o = op;
  ir->prev = J->chain[op];
  J->chain[op] = (IRRef1)ref;
found:
  return TREF(ref, IRT_PGC);
}
