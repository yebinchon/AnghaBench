
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_11__ {TYPE_5__* ir; } ;
struct TYPE_14__ {int* chain; TYPE_1__ cur; } ;
typedef TYPE_4__ jit_State ;
struct TYPE_16__ {scalar_t__ u64; } ;
struct TYPE_13__ {int irt; } ;
struct TYPE_12__ {scalar_t__ u64; } ;
struct TYPE_15__ {int prev; size_t o; scalar_t__ op12; TYPE_3__ t; TYPE_2__ tv; } ;
typedef int TRef ;
typedef int IRType ;
typedef int IRRef1 ;
typedef int IRRef ;
typedef size_t IROp ;
typedef TYPE_5__ IRIns ;


 TYPE_5__* IR (int) ;
 int IRT_I64 ;
 int IRT_NUM ;
 size_t IR_KNUM ;
 int TREF (int,int ) ;
 TYPE_8__* ir_k64 (TYPE_5__*) ;
 int ir_nextk64 (TYPE_4__*) ;

TRef lj_ir_k64(jit_State *J, IROp op, uint64_t u64)
{
  IRIns *ir, *cir = J->cur.ir;
  IRRef ref;
  IRType t = op == IR_KNUM ? IRT_NUM : IRT_I64;
  for (ref = J->chain[op]; ref; ref = cir[ref].prev)
    if (ir_k64(&cir[ref])->u64 == u64)
      goto found;
  ref = ir_nextk64(J);
  ir = IR(ref);
  ir[1].tv.u64 = u64;
  ir->t.irt = t;
  ir->o = op;
  ir->op12 = 0;
  ir->prev = J->chain[op];
  J->chain[op] = (IRRef1)ref;
found:
  return TREF(ref, t);
}
