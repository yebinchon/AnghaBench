
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {TYPE_4__* ir; } ;
struct TYPE_11__ {int* chain; TYPE_1__ cur; } ;
typedef TYPE_3__ jit_State ;
typedef int cTValue ;
struct TYPE_10__ {int irt; } ;
struct TYPE_12__ {int prev; size_t o; TYPE_2__ t; int ptr; } ;
typedef int TRef ;
typedef int IRType ;
typedef int IRRef1 ;
typedef int IRRef ;
typedef size_t IROp ;
typedef TYPE_4__ IRIns ;


 TYPE_4__* IR (int) ;
 int IRT_I64 ;
 int IRT_NUM ;
 size_t IR_KNUM ;
 int TREF (int,int ) ;
 int checkptrGC (int *) ;
 int * ir_k64 (TYPE_4__*) ;
 int ir_nextk (TYPE_3__*) ;
 int lua_assert (int ) ;
 int setmref (int ,int *) ;

TRef lj_ir_k64(jit_State *J, IROp op, cTValue *tv)
{
  IRIns *ir, *cir = J->cur.ir;
  IRRef ref;
  IRType t = op == IR_KNUM ? IRT_NUM : IRT_I64;
  for (ref = J->chain[op]; ref; ref = cir[ref].prev)
    if (ir_k64(&cir[ref]) == tv)
      goto found;
  ref = ir_nextk(J);
  ir = IR(ref);
  lua_assert(checkptrGC(tv));
  setmref(ir->ptr, tv);
  ir->t.irt = t;
  ir->o = op;
  ir->prev = J->chain[op];
  J->chain[op] = (IRRef1)ref;
found:
  return TREF(ref, t);
}
