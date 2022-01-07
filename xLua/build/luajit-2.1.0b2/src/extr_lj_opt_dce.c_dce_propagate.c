
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_10__ {scalar_t__ nins; } ;
struct TYPE_11__ {TYPE_1__ cur; scalar_t__* chain; } ;
typedef TYPE_2__ jit_State ;
struct TYPE_13__ {int irt; } ;
struct TYPE_12__ {size_t o; scalar_t__ op1; scalar_t__ op2; TYPE_4__ t; scalar_t__ prev; } ;
typedef scalar_t__ IRRef1 ;
typedef scalar_t__ IRRef ;
typedef TYPE_3__ IRIns ;


 TYPE_3__* IR (scalar_t__) ;
 int IRT_NIL ;
 size_t IR_NOP ;
 int IR__MAX ;
 scalar_t__ REF_FIRST ;
 int ir_sideeff (TYPE_3__*) ;
 int irt_clearmark (TYPE_4__) ;
 scalar_t__ irt_ismarked (TYPE_4__) ;
 int irt_setmark (TYPE_4__) ;

__attribute__((used)) static void dce_propagate(jit_State *J)
{
  IRRef1 *pchain[IR__MAX];
  IRRef ins;
  uint32_t i;
  for (i = 0; i < IR__MAX; i++) pchain[i] = &J->chain[i];
  for (ins = J->cur.nins-1; ins >= REF_FIRST; ins--) {
    IRIns *ir = IR(ins);
    if (irt_ismarked(ir->t)) {
      irt_clearmark(ir->t);
      pchain[ir->o] = &ir->prev;
    } else if (!ir_sideeff(ir)) {
      *pchain[ir->o] = ir->prev;
      ir->t.irt = IRT_NIL;
      ir->o = IR_NOP;
      ir->op1 = ir->op2 = 0;
      ir->prev = 0;
      continue;
    }
    if (ir->op1 >= REF_FIRST) irt_setmark(IR(ir->op1)->t);
    if (ir->op2 >= REF_FIRST) irt_setmark(IR(ir->op2)->t);
  }
}
