
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ nins; } ;
struct TYPE_7__ {TYPE_1__ cur; int * chain; } ;
typedef TYPE_2__ jit_State ;
struct TYPE_8__ {size_t o; int prev; } ;
typedef scalar_t__ IRRef ;
typedef TYPE_3__ IRIns ;


 TYPE_3__* IR (scalar_t__) ;

void lj_ir_rollback(jit_State *J, IRRef ref)
{
  IRRef nins = J->cur.nins;
  while (nins > ref) {
    IRIns *ir;
    nins--;
    ir = IR(nins);
    J->chain[ir->o] = ir->prev;
  }
  J->cur.nins = nins;
}
