
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__* chain; } ;
typedef TYPE_1__ jit_State ;
struct TYPE_7__ {scalar_t__ op2; scalar_t__ op1; scalar_t__ prev; } ;
typedef scalar_t__ IRRef ;
typedef TYPE_2__ IRIns ;


 scalar_t__ ALIAS_NO ;
 TYPE_2__* IR (scalar_t__) ;
 scalar_t__ IRCALL_lj_tab_clear ;
 size_t IR_CALLS ;
 scalar_t__ aa_table (TYPE_1__*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int fwd_aa_tab_clear(jit_State *J, IRRef lim, IRRef ta)
{
  IRRef ref = J->chain[IR_CALLS];
  while (ref > lim) {
    IRIns *calls = IR(ref);
    if (calls->op2 == IRCALL_lj_tab_clear &&
 (ta == calls->op1 || aa_table(J, ta, calls->op1) != ALIAS_NO))
      return 0;
    ref = calls->prev;
  }
  return 1;
}
