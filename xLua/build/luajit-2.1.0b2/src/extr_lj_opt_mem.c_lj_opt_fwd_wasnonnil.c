
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__* chain; } ;
typedef TYPE_1__ jit_State ;
struct TYPE_6__ {scalar_t__ op1; scalar_t__ op2; scalar_t__ prev; int t; } ;
typedef scalar_t__ IRRef ;
typedef size_t IROpT ;
typedef TYPE_2__ IRIns ;


 TYPE_2__* IR (scalar_t__) ;
 size_t IRDELTA_L2S ;
 size_t IR_ALOAD ;
 int irref_isk (scalar_t__) ;
 scalar_t__ irt_isnil (int ) ;
 scalar_t__ irt_sametype (int ,int ) ;

int lj_opt_fwd_wasnonnil(jit_State *J, IROpT loadop, IRRef xref)
{

  IRRef ref = J->chain[loadop+IRDELTA_L2S];
  while (ref > xref) {
    IRIns *store = IR(ref);
    if (store->op1 == xref) {

      return !irt_isnil(store->t);
    } else if (irt_isnil(store->t)) {
      IRRef skref = IR(store->op1)->op2;
      IRRef xkref = IR(xref)->op2;

      if (loadop == IR_ALOAD || irt_sametype(IR(skref)->t, IR(xkref)->t)) {
 if (skref == xkref || !irref_isk(skref) || !irref_isk(xkref))
   return 0;

      }
    }
    ref = store->prev;
  }


  ref = J->chain[loadop];
  while (ref > xref) {
    IRIns *load = IR(ref);
    if (load->op1 == xref) {

      return !irt_isnil(load->t);
    }
    ref = load->prev;
  }
  return 0;
}
